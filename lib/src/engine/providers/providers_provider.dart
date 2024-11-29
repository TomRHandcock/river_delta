import 'package:collection/collection.dart';
import 'package:river_delta/src/engine/providers/extension_receiver.dart';
import 'package:river_delta/src/ui/graph/graph_render_object.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../observer/dto_models.dart';

part 'providers_provider.g.dart';

@riverpod
class ProvidersProvider extends _$ProvidersProvider {
  List<ProviderDto> _providers = List.empty();

  @override
  Future<List<ProviderDto>> build() async {
    final eventStream = await ref.watch(vmServiceProvider.future);
    final subscription = eventStream.onExtensionEvent.listen((event) {
      switch (event.extensionKind) {
        case "ext.river_delta.add":
          final provider = ProviderDto.fromJson(event.extensionData!.data);
          _providers = _providers + [provider];
          _emit(_providers);
        case "ext.river_delta.update":
          final provider = ProviderDto.fromJson(event.extensionData!.data);
          _providers = _providers
              .whereNot((it) =>
                  it.name == provider.name && it.argument == provider.argument)
              .toList() + [provider];
          _emit(_providers);
        case "ext.river_delta.dispose":
          final provider = ProviderDto.fromJson(event.extensionData!.data);
          _providers = _providers
              .whereNot((it) =>
          it.name == provider.name && it.argument == provider.argument)
              .toList();
          _emit(_providers);
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
