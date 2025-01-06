import 'dart:developer';
import 'dart:isolate';

import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dto_models.dart';

class DeltaObserver extends ProviderObserver {
  const DeltaObserver._();

  static DeltaObserver? _instance;

  static DeltaObserver get instance {
    final localInstance = _instance;
    if (localInstance != null) {
      return localInstance;
    }
    _instance = const DeltaObserver._();
    return _instance!;
  }

  Iterable<ProviderSlimDependencyDto> _fetchDependenciesForProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) {
    final dependencies = <ProviderElementBase>{};
    container
        .getAllProviderElements()
        .firstWhereOrNull((it) => it.provider.name == provider.name)
        ?.visitAncestors((ancestor) {
      final name = ancestor.provider.name;
      if (name != null) {
        dependencies.add(ancestor);
      }
    });
    return dependencies.map(
      (dependency) => ProviderSlimDependencyDto(
        name: dependency.provider.name!,
        objectId: Service.getObjectId(dependency.provider)!,
      ),
    );
  }

  @override
  void didAddProvider(ProviderBase<Object?> provider, Object? value,
      ProviderContainer container) {
    final dependencies = _fetchDependenciesForProvider(provider, container);
    postEvent(
      "ext.river_delta.add",
      ProviderDto(
        name: provider.name ?? "Unknown provider",
        objectId: Service.getObjectId(provider)!,
        isolateId: Service.getIsolateId(Isolate.current)!,
        dependencies: dependencies.toSet(),
      ).toJson(),
    );
    super.didAddProvider(provider, value, container);
  }

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    final dependencies = _fetchDependenciesForProvider(provider, container);
    postEvent(
      "ext.river_delta.update",
      ProviderDto(
        name: provider.name ?? "Unknown provider",
        objectId: Service.getObjectId(provider)!,
        isolateId: Service.getIsolateId(Isolate.current)!,
        dependencies: dependencies.toSet(),
      ).toJson(),
    );
    super.didUpdateProvider(provider, previousValue, newValue, container);
  }

  @override
  void didDisposeProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) {
    final dependencies = _fetchDependenciesForProvider(provider, container);
    postEvent(
      "ext.river_delta.dispose",
      ProviderDto(
        name: provider.name ?? "Unknown provider",
        objectId: Service.getObjectId(provider)!,
        isolateId: Service.getIsolateId(Isolate.current)!,
        dependencies: dependencies.toSet(),
      ).toJson(),
    );
    super.didDisposeProvider(provider, container);
  }
}
