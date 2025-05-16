import 'package:collection/collection.dart';
import 'package:river_delta/src/engine/providers/providers_provider.dart';
import 'package:river_delta/src/engine/utils/utils.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'graph_viewmodel.g.dart';

extension on Set<DeltaProvider> {
  DeltaProvider? getProvider(DeltaProviderDependency dependency) =>
      firstWhereOrNull((provider) {
        const listEquality = SetEquality();
        return provider.name == dependency.name &&
            listEquality.equals(
                provider.arguments.toSet(), dependency.arguments.toSet());
      });
}

@riverpod
class GraphViewmodel extends _$GraphViewmodel {
  @override
  Future<GraphState> build() async {
    final dtos = await ref.watch(providersProviderProvider.future);
    final providers = dtos.map((dto) {
      final dependencies = dto.dependencies
          .map((dependency) => DeltaProviderDependency(
                name: dependency.name,
                arguments: dependency.arguments,
              ))
          .toList();
      final incumbent = _findIncumbentProvider(dto.name, dto.arguments);
      final previousState = incumbent?.states.firstOrNull;
      return DeltaProvider(
        name: dto.name,
        arguments: dto.arguments,
        dependencies: dependencies,
        states: [
          if (previousState?.timestamp != dto.state?.timestamp) dto.state,
          ...?incumbent?.states
        ].nonNulls.toList(),
      );
    }).toSet();
    Set<GraphNode> nodes = _computeNodes(providers);
    Set<GraphEdge> edges = _computeEdges(providers);
    return GraphState(nodes: nodes, edges: edges);
  }

  Set<GraphNode> _computeNodes(Set<DeltaProvider> providers) {
    final nodes = providers
        .map(
          (provider) => GraphNode(provider: provider),
        )
        .toSet();
    return nodes;
  }

  Set<GraphEdge> _computeEdges(Set<DeltaProvider> providers) {
    final edges = providers.fold(
      <GraphEdge>[],
      (acc, cur) =>
          cur.dependencies
              .map((dependency) =>
                  providers.getProvider(dependency)?.let((it) => GraphEdge(
                        from: cur,
                        to: it,
                      )))
              .whereNotNull()
              .toList() +
          acc,
    ).toSet();
    return edges;
  }

  DeltaProvider? _findIncumbentProvider(String name, Set<String> arguments) {
    final current = state.valueOrNull;
    if (current == null) {
      return null;
    }
    return current.allProviders.firstWhereOrNull((provider) {
      const listEquality = SetEquality();
      return provider.name == name &&
          listEquality.equals(provider.arguments.toSet(), arguments.toSet());
    });
  }

  void selectProvider(DeltaProvider provider) {
    final current = state.valueOrNull;
    if (current == null) {
      return;
    }
    state = AsyncValue.data(current.copyWith(
      selectedProvider: provider,
    ));
  }
}
