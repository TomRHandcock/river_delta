import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'dto_models.dart';

class DeltaObserver extends ProviderObserver {
  @protected
  DeltaObserver() : super();

  static DeltaObserver? _instance;

  static DeltaObserver get instance {
    final localInstance = _instance;
    if (localInstance != null) {
      return localInstance;
    }
    _instance = DeltaObserver();
    return _instance!;
  }

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    final elements = container.getAllProviderElementsInOrder();
    final providers = elements.map((element) {
      final dependencies = <String>[];
      element.visitAncestors((ancestor) {
        final name = ancestor.provider.name;
        if (name != null) {
          dependencies.add(name);
        }
      });
      return ProviderDto(
        name: element.provider.name ?? "Unknown provider",
        dependencies: dependencies,
      );
    }).toList();
    postEvent("ext.river_delta.update",
        ProviderListDto(providers: providers).toJson());
    super.didUpdateProvider(provider, previousValue, newValue, container);
  }

  @override
  void didDisposeProvider(
      ProviderBase<Object?> provider, ProviderContainer container) {
    final elements = container.getAllProviderElementsInOrder();
    final providers = elements.map((element) {
      final dependencies = <String>[];
      element.visitAncestors((ancestor) {
        final name = ancestor.provider.name;
        if (name != null) {
          dependencies.add(name);
        }
      });
      return ProviderDto(
        name: element.provider.name ?? "Unknown provider",
        dependencies: dependencies,
      );
    }).toList();
    postEvent("ext.river_delta.update",
        ProviderListDto(providers: providers).toJson());
    super.didDisposeProvider(provider, container);
  }
}
