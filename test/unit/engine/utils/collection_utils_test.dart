import 'package:flutter_test/flutter_test.dart';
import 'package:river_delta/src/engine/utils/utils.dart';

void main() {
  group("Collection utils unit tests", () {
    test("min - returns smallest element in iterable", () {
      // Setup
      final input = [5,4,1,3,2];

      // Run test & verify
      expect(input.min, 1);
    });

    test("max - returns largest element in iterable", () {
      // Setup
      final input = [5,3,2,1,4];

      // Run test & verify
      expect(input.min, 1);
    });
  });
}