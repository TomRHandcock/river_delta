import 'package:example/src/engine/config/mockzilla/mockzilla_config.dart';
import 'package:example/src/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockzilla/mockzilla.dart';
import 'package:river_delta/river_delta.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Mockzilla.startMockzilla(mockzillaConfig);
  runApp(
    ProviderScope(
      observers: [DeltaObserver.instance],
      child: const App(),
    ),
  );
}
