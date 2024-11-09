import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:river_delta/src/engine/utils/utils.dart';

part 'models.freezed.dart';

@freezed
class DeltaProvider with _$DeltaProvider {
  const DeltaProvider._();

  const factory DeltaProvider({
    required String name,
    @Default([]) List<String> dependencies,
  }) = _DeltaProvider;

  bool get isRoot => dependencies.isEmpty;

  static DeltaProvider _getDeltaProvider(
    Set<DeltaProvider> allProviders,
    String name,
  ) =>
      allProviders.firstWhere((provider) => provider.name == name);

  int distanceToRoot(
      {required Set<DeltaProvider> allProviders,
      bool longestPath = false,
      int recursionDepth = 0}) {
    if (isRoot) {
      return 0;
    }
    if(recursionDepth > 10) {
      return 10;
    }
    try {
      final dependencyDistances = dependencies
          .map((provider) => _getDeltaProvider(allProviders, provider))
          .map(
            (dependency) =>
            dependency.distanceToRoot(
                allProviders: allProviders,
                longestPath: longestPath,
                recursionDepth: recursionDepth + 1),
      );
      if (longestPath) {
        return dependencyDistances.max + 1;
      } else {
        return dependencyDistances.min + 1;
      }
    } catch(_) {
      return 0;
    }
  }

  bool isLeaf(Set<DeltaProvider> allProviders) => allProviders.fold(
        <String>[],
        (acc, provider) => provider.dependencies + acc,
      ).contains(name);
}
