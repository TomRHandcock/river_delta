import 'dart:math' as math;

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
                provider.arguments?.toSet(), dependency.arguments?.toSet());
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
      return DeltaProvider(
        name: dto.name,
        arguments: dto.arguments,
        dependencies: dependencies,
      );
    }).toSet();
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
    final random = math.Random();
    final nodes = providers
        .map(
          (provider) => GraphNode(
              provider: provider,
              x: random.nextDouble() * 10,
              y: random.nextDouble() * 10),
        )
        .toSet();
    return GraphState(nodes: nodes, edges: edges);
  }
}
