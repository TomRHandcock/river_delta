// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProvidersProvider)
const providersProviderProvider = ProvidersProviderProvider._();

final class ProvidersProviderProvider
    extends $AsyncNotifierProvider<ProvidersProvider, List<ProviderModel>> {
  const ProvidersProviderProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'providersProviderProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$providersProviderHash();

  @$internal
  @override
  ProvidersProvider create() => ProvidersProvider();
}

String _$providersProviderHash() => r'f007254264367bd6ad64cb0e6ec2fc55ef0ca59f';

abstract class _$ProvidersProvider extends $AsyncNotifier<List<ProviderModel>> {
  FutureOr<List<ProviderModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<ProviderModel>>, List<ProviderModel>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<ProviderModel>>, List<ProviderModel>>,
        AsyncValue<List<ProviderModel>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
