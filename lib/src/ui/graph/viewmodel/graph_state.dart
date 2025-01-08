import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'graph_state.freezed.dart';

@freezed
class GraphState with _$GraphState {
  const factory GraphState({
    required Set<GraphNode> nodes,
    required Set<GraphEdge> edges,
    DeltaProvider? selectedProvider,
  }) = _GraphState;
}

@freezed
class GraphNode with _$GraphNode {
  const GraphNode._();

  const factory GraphNode({
    required DeltaProvider provider,
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

  DeltaProvider getDependency(Set<DeltaProvider> providers) {
    const setEquality = SetEquality();
    return providers.firstWhere(
      (provider) =>
          provider.name == from.name &&
          setEquality.equals(
            provider.arguments?.toSet(),
            from.arguments?.toSet(),
          ),
    );
  }

  DeltaProvider getDependent(Set<DeltaProvider> providers) {
    const setEquality = SetEquality();
    return providers.firstWhere(
      (provider) =>
          provider.name == to.name &&
          setEquality.equals(
            provider.arguments?.toSet(),
            to.arguments?.toSet(),
          ),
    );
  }
}

@freezed
class DeltaProvider with _$DeltaProvider {
  const DeltaProvider._();

  const factory DeltaProvider({
    required String name,
    @Default({}) Set<String> arguments,
    @Default([]) List<DeltaProviderDependency> dependencies,
  }) = _DeltaProvider;

  bool get isRoot => dependencies.isEmpty;

  static DeltaProvider? _getDeltaProvider(
      Set<DeltaProvider> allProviders,
      String name,
      Set<String> arguments,
      ) {
    const setEquality = SetEquality();
    return allProviders.firstWhereOrNull(
          (provider) =>
      provider.name == name &&
          setEquality.equals(provider.arguments.toSet(), arguments?.toSet()),
    );
  }

  int distanceToRoot({
    required Set<DeltaProvider> allProviders,
    bool longestPath = false,
    int recursionDepth = 0,
  }) {
    if (isRoot) {
      return 0;
    }
    if (recursionDepth > 10) {
      return 10;
    }
    try {
      final dependencyProviders = dependencies.toSet()
          .map(
            (provider) => _getDeltaProvider(
          allProviders,
          provider.name,
          provider.arguments.toSet(),
        ),
      ).toList();
      final dependencyDistances = dependencyProviders
          .map(
            (dependency) => dependency?.distanceToRoot(
            allProviders: allProviders,
            longestPath: longestPath,
            recursionDepth: recursionDepth + 1),
      ).whereNotNull().toList();
      if(dependencyDistances.isEmpty) {
        return 0;
      }
      if (longestPath) {
        return dependencyDistances.max + 1;
      } else {
        return dependencyDistances.min + 1;
      }
    } catch (_) {
      return 0;
    }
  }

  bool isLeaf(Set<DeltaProvider> allProviders) => allProviders.fold(
    <DeltaProviderDependency>[],
        (acc, provider) => provider.dependencies + acc,
  ).contains(DeltaProviderDependency(name: name, arguments: arguments));
}

@freezed
class DeltaProviderDependency with _$DeltaProviderDependency {
  const factory DeltaProviderDependency({
    required String name,
    @Default({}) Set<String> arguments,
  }) = _DeltaProviderDependency;
}

