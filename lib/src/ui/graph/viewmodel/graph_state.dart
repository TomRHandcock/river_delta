import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:river_delta/src/engine/providers/models.dart';

part 'graph_state.freezed.dart';

@freezed
class GraphState with _$GraphState {
  const factory GraphState({
    required Set<GraphNode> nodes,
    required Set<GraphEdge> edges,
  }) = _GraphState;
}

@freezed
class GraphNode with _$GraphNode {
  const GraphNode._();

  const factory GraphNode({
    required DeltaProvider provider,
    required double x,
    required double y,
  }) = _GraphNode;

  int distanceToRoot(Set<DeltaProvider> allProviders, {bool longest = false}) =>
      provider.distanceToRoot(
        allProviders: allProviders,
        longestPath: longest,
      );
}

@freezed
class GraphEdge with _$GraphEdge {
  const GraphEdge._();

  const factory GraphEdge({
    required DeltaProvider from,
    required DeltaProvider to,
  }) = _GraphEdge;

  DeltaProvider getDependency(Set<DeltaProvider> providers) =>
      providers.firstWhere((provider) =>
          provider.name == from.name && provider.argument == from.argument);

  DeltaProvider getDependent(Set<DeltaProvider> providers) =>
      providers.firstWhere((provider) =>
          provider.name == to.name && provider.argument == to.argument);
}
