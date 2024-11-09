import 'package:example/src/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_delta/river_delta.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [DeltaObserver.instance],
      child: const App(),
    ),
  );
}
