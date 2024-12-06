import 'package:collection/collection.dart';
import 'package:river_delta/src/engine/providers/extension_receiver.dart';
import 'package:river_delta/src/engine/utils/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vm_service/vm_service.dart';

import '../observer/dto_models.dart';

part 'providers_provider.g.dart';

@riverpod
class ProvidersProvider extends _$ProvidersProvider {
  List<ProviderDto> _providers = List.empty();
  final _listEquality = const SetEquality();

  Future<Set<String>?> _extractFamilyArguments(
    VmService vmService,
    ProviderDto provider,
  ) async {
    final instance =
        await vmService.getObject(provider.isolateId, provider.objectId);
    final classId = instance.classRef?.id;
    if (classId == null) {
      return null;
    }
    final providerClass =
        (await vmService.getObject(provider.isolateId, classId))
            .asOrNull<Class>();
    final fieldNames = providerClass?.fields?.map((it) => it.name);
    if (fieldNames == null || fieldNames.isEmpty) {
      return null;
    }
    final parameters = await Future.wait(fieldNames.map((field) async {
      final value = await vmService.evaluate(
          provider.isolateId, provider.objectId, "this.$field");
      if (value is InstanceRef) {
        return value.valueAsString;
      } else {
        return null;
      }
    }));
    return parameters.whereNotNull().toSet();
  }

  @override
  Future<List<ProviderDto>> build() async {
    final vmService = await ref.watch(vmServiceProvider.future);
    final subscription = vmService.onExtensionEvent.listen((event) async {
      try {
        switch (event.extensionKind) {
          case "ext.river_delta.add":
            final provider = ProviderDto.fromJson(event.extensionData!.data);
            final arguments = await _extractFamilyArguments(
                vmService, provider);
            _providers = _providers + [provider.copyWith(arguments: arguments)];
            _emit(_providers);
          case "ext.river_delta.update":
            final provider = ProviderDto.fromJson(event.extensionData!.data);
            final arguments = await _extractFamilyArguments(
                vmService, provider);
            final providerWithArgs = provider.copyWith(arguments: arguments);
            _providers = _providers.whereNot((it) {
              return it.name == providerWithArgs.name &&
                  _listEquality.equals(it.arguments?.toSet(),
                      providerWithArgs.arguments?.toSet());
            }).toList() +
                [providerWithArgs];
            _emit(_providers);
          case "ext.river_delta.dispose":
            final provider = ProviderDto.fromJson(event.extensionData!.data);
            final arguments = await _extractFamilyArguments(
                vmService, provider);
            final providerWithArgs = provider.copyWith(arguments: arguments);
            _providers = _providers.whereNot((it) {
              return it.name == providerWithArgs.name &&
                  _listEquality.equals(it.arguments?.toSet(),
                      providerWithArgs.arguments?.toSet());
            }).toList() +
                [providerWithArgs];
            _emit(_providers);
        }
      } catch(e) {
        e;
      }
    });
    ref.onDispose(() {
      subscription.cancel();
    });
    return _providers;
  }

  void _emit(List<ProviderDto> providers) {
    state = AsyncData(_providers);
    ref.notifyListeners();
  }
}
