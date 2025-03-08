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

  Future<Iterable<ProviderSlimDependencyDto>> _fetchDependenciesForProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) async {
    final dependencies = <ProviderElementBase>{};
    // Use a microtask to read provider ancestors after synchronous code has
    // run in the event loop. If we didn't do this, the provider element won't
    // be found in the container.
    return Future.microtask(() {
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
        (dependency) {
          final name = dependency.provider.name;
          final objectId = Service.getObjectId(dependency.provider);
          if (name == null || objectId == null) {
            return null;
          }
          return ProviderSlimDependencyDto(
            name: name,
            objectId: objectId,
          );
        },
      ).nonNulls;
    });
  }

  @override
  void didAddProvider(ProviderBase<Object?> provider, Object? value,
      ProviderContainer container) async {
    final dependencies =
        await _fetchDependenciesForProvider(provider, container);
    final providerDto = _resolveProvider(provider, dependencies.toSet());
    if (providerDto == null) {
      return;
    }
    postEvent("ext.river_delta.add", providerDto.toJson());
    super.didAddProvider(provider, value, container);
  }

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) async {
    final dependencies =
        await _fetchDependenciesForProvider(provider, container);
    final providerDto = _resolveProvider(provider, dependencies.toSet());
    if (providerDto == null) {
      return;
    }
    postEvent("ext.river_delta.update", providerDto.toJson());
    super.didUpdateProvider(provider, previousValue, newValue, container);
  }

  @override
  void didDisposeProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) async {
    final dependencies =
        await _fetchDependenciesForProvider(provider, container);
    final providerDto = _resolveProvider(provider, dependencies.toSet());
    if (providerDto == null) {
      return;
    }
    postEvent("ext.river_delta.dispose", providerDto.toJson());
    super.didDisposeProvider(provider, container);
  }

  ProviderDto? _resolveProvider(
    ProviderBase<Object?> provider,
    Set<ProviderSlimDependencyDto> dependencies,
  ) {
    final name = provider.name;
    final objectId = Service.getObjectId(provider);
    final isolateId = Service.getIsolateId(Isolate.current);
    if (name == null || objectId == null || isolateId == null) {
      log("Couldn't resolve provider: {name: $name, objectId: $objectId, isolateId: $isolateId}",
          level: 900);
      return null;
    }
    return ProviderDto(
      name: name,
      objectId: objectId,
      isolateId: isolateId,
      dependencies: dependencies,
    );
  }
}
