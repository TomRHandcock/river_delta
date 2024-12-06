import 'package:collection/collection.dart';
import 'package:river_delta/src/engine/providers/extension_receiver.dart';
import 'package:river_delta/src/engine/providers/models.dart';
import 'package:river_delta/src/engine/utils/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vm_service/vm_service.dart';

import '../observer/dto_models.dart';

part 'providers_provider.g.dart';

@riverpod
class ProvidersProvider extends _$ProvidersProvider {
  List<ProviderModel> _providers = List.empty();
  final _listEquality = const SetEquality();

  Future<Set<String>?> _extractFamilyArguments(
    VmService vmService,
    String isolateId,
    String objectId,
  ) async {
    final instance = await vmService.getObject(isolateId, objectId);
    final classId = instance.classRef?.id;
    if (classId == null) {
      return null;
    }
    final providerClass =
        (await vmService.getObject(isolateId, classId)).asOrNull<Class>();
    final fieldNames = providerClass?.fields?.map((it) => it.name);
    if (fieldNames == null || fieldNames.isEmpty) {
      return null;
    }
    final parameters = await Future.wait(fieldNames.map((field) async {
      final value =
          await vmService.evaluate(isolateId, objectId, "this.$field");
      if (value is InstanceRef) {
        return value.valueAsString;
      } else {
        return null;
      }
    }));
    return parameters.whereNotNull().toSet();
  }

  @override
  Future<List<ProviderModel>> build() async {
    final vmService = await ref.watch(vmServiceProvider.future);
    final subscription = vmService.onExtensionEvent.listen((event) async {
      try {
        switch (event.extensionKind) {
          case "ext.river_delta.add":
            final provider = ProviderDto.fromJson(event.extensionData!.data);
            final arguments = await _extractFamilyArguments(
                vmService, provider.isolateId, provider.objectId);
            final resolvedDependencies = await Future.wait(
              provider.dependencies.map(
                (it) => _extractFamilyArguments(
                        vmService, provider.isolateId, it.objectId)
                    .then(
                  (arguments) => ProviderDependencyModel(
                    name: it.name,
                    arguments: arguments ?? {},
                  ),
                ),
              ),
            );
            _providers = _providers +
                [
                  ProviderModel(
                    name: provider.name,
                    arguments: arguments ?? {},
                    dependencies: resolvedDependencies.toSet(),
                  ),
                ];
            _emit(_providers);
          case "ext.river_delta.update":
            final provider = ProviderDto.fromJson(event.extensionData!.data);
            final arguments = await _extractFamilyArguments(
                vmService, provider.isolateId, provider.objectId);
            final resolvedDependencies = await Future.wait(
              provider.dependencies.map(
                (it) => _extractFamilyArguments(
                        vmService, provider.isolateId, it.objectId)
                    .then(
                  (arguments) => ProviderDependencyModel(
                      name: it.name, arguments: arguments ?? {}),
                ),
              ),
            );
            final providerWithArgs = ProviderModel(
              name: provider.name,
              arguments: arguments ?? {},
              dependencies: resolvedDependencies.toSet(),
            );
            _providers = _providers.whereNot((it) {
                  return it.name == providerWithArgs.name &&
                      _listEquality.equals(it.arguments.toSet(),
                          providerWithArgs.arguments.toSet());
                }).toList() +
                [providerWithArgs];
            _emit(_providers);
          case "ext.river_delta.dispose":
            final provider = ProviderDto.fromJson(event.extensionData!.data);
            final arguments = await _extractFamilyArguments(
                vmService, provider.isolateId, provider.objectId);
            final providerWithArgs = ProviderModel(
              name: provider.name,
              arguments: arguments ?? {},
            );
            _providers = _providers.whereNot((it) {
              return it.name == providerWithArgs.name &&
                  _listEquality.equals(
                      it.arguments.toSet(), providerWithArgs.arguments.toSet());
            }).toList();
            _emit(_providers);
        }
      } catch (e) {
        e;
      }
    });
    ref.onDispose(() {
      subscription.cancel();
    });
    return _providers;
  }

  void _emit(List<ProviderModel> providers) {
    state = AsyncData(_providers);
    ref.notifyListeners();
  }
}
