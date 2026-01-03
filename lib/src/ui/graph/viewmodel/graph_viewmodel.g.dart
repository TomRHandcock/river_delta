// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graph_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GraphViewmodel)
const graphViewmodelProvider = GraphViewmodelProvider._();

final class GraphViewmodelProvider
    extends $AsyncNotifierProvider<GraphViewmodel, GraphState> {
  const GraphViewmodelProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'graphViewmodelProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$graphViewmodelHash();

  @$internal
  @override
  GraphViewmodel create() => GraphViewmodel();
}

String _$graphViewmodelHash() => r'550795f4b374d1f090a0fc508b6efae48033efb9';

abstract class _$GraphViewmodel extends $AsyncNotifier<GraphState> {
  FutureOr<GraphState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<GraphState>, GraphState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<GraphState>, GraphState>,
        AsyncValue<GraphState>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
