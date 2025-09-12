import 'dart:math';

import 'package:river_delta/src/ui/components/animation/transformer.dart';

class GlowTransformer implements Transformer {
  @override
  double transform(double x) {
    final curveA = 1 - pow((3 * x - 1), 2);
    final curveB = pow(1.7 * x - 1.7, 2);
    return switch (x) {
      > 0.44 => curveB.toDouble(),
      _ => curveA.toDouble(),
    };
  }
}
