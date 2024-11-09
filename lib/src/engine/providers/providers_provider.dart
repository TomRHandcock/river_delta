import 'package:river_delta/src/engine/providers/extension_receiver.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../observer/dto_models.dart';

part 'providers_provider.g.dart';

@riverpod
List<ProviderDto> providersProvider(ProvidersProviderRef ref) {
  ref.watch(vmServiceProvider.future).then((vmService) {
    vmService.onExtensionEvent.listen((event) {
      switch(event.extensionKind) {
        case "ext.river_delta.update":
          ref.state = ProviderListDto.fromJson(event.extensionData!.data).providers;
        case "ext.river_delta.addProvider":
          ref.state = ref.state + [ProviderDto.fromJson(event.extensionData!.data)];
        case "ext.river_delta.removeProvider":
          final removed = ProviderDto.fromJson(event.extensionData!.data).name;
          ref.state = ref.state.where((incumbent) => incumbent.name != removed).toList();
      }
    });
  });
  return [];
}