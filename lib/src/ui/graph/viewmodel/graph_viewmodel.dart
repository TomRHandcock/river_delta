import 'package:river_delta/src/engine/providers/models.dart';
import 'package:river_delta/src/engine/providers/providers_provider.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:math' as math;

part 'graph_viewmodel.g.dart';

extension on Set<DeltaProvider> {
  DeltaProvider getProvider(DeltaProviderDependency dependency) =>
      firstWhere((provider) =>
          provider.name == dependency.name &&
          provider.argument == provider.argument);
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
                argument: dependency.argument,
              ))
          .toList();
      return DeltaProvider(
        name: dto.name,
        argument: dto.argument,
        dependencies: dependencies,
      );
    }).toSet();
    final edges = providers.fold(
      <GraphEdge>[],
      (acc, cur) =>
          cur.dependencies
              .map((dependency) => GraphEdge(
                    from: cur,
                    to: providers.getProvider(dependency),
                  ))
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
