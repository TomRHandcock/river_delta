library river_delta;

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_delta/src/extension.dart';

void main() {
  runApp(
    const ProviderScope(
      child: RiverDeltaExtension(),
    ),
  );
}
