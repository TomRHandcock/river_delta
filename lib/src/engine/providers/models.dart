import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

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
