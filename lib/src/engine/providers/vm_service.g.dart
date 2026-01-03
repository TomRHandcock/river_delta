// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vm_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(vmService)
const vmServiceProvider = VmServiceProvider._();

final class VmServiceProvider extends $FunctionalProvider<AsyncValue<VmService>,
        VmService, FutureOr<VmService>>
    with $FutureModifier<VmService>, $FutureProvider<VmService> {
  const VmServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'vmServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$vmServiceHash();

  @$internal
  @override
  $FutureProviderElement<VmService> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<VmService> create(Ref ref) {
    return vmService(ref);
  }
}

String _$vmServiceHash() => r'4fe43856bd5956134546eb27cf1415d0eacb531f';
