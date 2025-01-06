import 'package:river_delta/src/engine/utils/utils.dart';
import 'package:test/test.dart';

void main() {
  group("Object utils unit tests", () {
    test("asOrNull - on sub class - returns receiver as subclass", () {
      // Setup
      Object receiver = 42;

      // Run test & verify
      expect(receiver.asOrNull<int>(), 42);
    });

    test("asOrNull - on non sub class - returns null", () {
      // Setup
      Object receiver = "42";

      // Run test & verify
      expect(receiver.asOrNull<int>(), null);
    });

    test("let - returns transformed receiver", () {
      // Setup
      const receiver = 1;

      // Run test & verify
      expect(receiver.let((it) => it + 1), 2);
    });
  });
}
