import 'package:flutter_test/flutter_test.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_state.dart';

void main() {
  group("DeltaProvider unit tests", () {
    test("shallowEquals - matching name and args - returns true", () {
      final a =
          DeltaProvider(name: "ProviderA", states: [], arguments: {"Arg1"});
      final b =
          DeltaProvider(name: "ProviderA", states: [], arguments: {"Arg1"});

      expect(a.shallowEquals(b), true);
    });

    test("shallowEquals - different names, same args - returns false", () {
      final a =
          DeltaProvider(name: "ProviderA", states: [], arguments: {"Arg1"});
      final b =
          DeltaProvider(name: "ProviderB", states: [], arguments: {"Arg1"});

      expect(a.shallowEquals(b), false);
    });

    test("shallowEquals - same names, different args - returns false", () {
      final a =
          DeltaProvider(name: "ProviderA", states: [], arguments: {"Arg1"});
      final b =
          DeltaProvider(name: "ProviderA", states: [], arguments: {"Arg2"});

      expect(a.shallowEquals(b), false);
    });

    test("shallowEquals - different names, different args - returns false", () {
      final a =
          DeltaProvider(name: "ProviderA", states: [], arguments: {"Arg1"});
      final b =
          DeltaProvider(name: "ProviderB", states: [], arguments: {"Arg2"});

      expect(a.shallowEquals(b), false);
    });
  });
}
