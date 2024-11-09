import 'package:river_delta/src/engine/providers/models.dart';
import 'package:river_delta/src/engine/providers/providers_provider.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:math' as math;

part 'graph_viewmodel.g.dart';

@riverpod
class GraphViewmodel extends _$GraphViewmodel {
  @override
  GraphState build() {
    final dtos = ref.watch(providersProviderProvider);
    final providers = dtos
        .map((dto) =>
            DeltaProvider(name: dto.name, dependencies: dto.dependencies))
        .toSet();
    final edges = providers.fold(
      <GraphEdge>[],
      (acc, cur) =>
          cur.dependencies
              .map((dependency) => GraphEdge(from: cur.name, to: dependency))
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
