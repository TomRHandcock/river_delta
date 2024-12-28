import 'package:flutter_test/flutter_test.dart';
import 'package:river_delta/src/engine/providers/models.dart';
import 'package:river_delta/src/engine/providers/providers_provider.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_state.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_viewmodel.dart';

import '../../../../test_utils/create_container.dart';
import 'mock_providers_provider.dart';

part 'fixtures.dart';

void main() async {
  group("Graph view model unit tests", () {
    test("build - returns resolved graph", () async {
      // Setup
      final container = createContainer(overrides: [
        providersProviderProvider.overrideWith(
          () => MockProvidersProvider(() async => [
                _providerModelFixtureA,
                _providerModelFixtureB,
                _providerModelFixtureC,
                _providerModelFixtureD,
              ]),
        )
      ]);

      // Run test
      final actual = await container.read(graphViewmodelProvider.future);

      // Verify
      final expected = GraphState(
        nodes: {
          const GraphNode(
            provider: _deltaProviderFixtureA,
          ),
          const GraphNode(
            provider: _deltaProviderFixtureB,
          ),
          const GraphNode(
            provider: _deltaProviderFixtureC,
          ),
          const GraphNode(
            provider: _deltaProviderFixtureD,
          ),
        },
        edges: {
          const GraphEdge(from: _deltaProviderFixtureA, to: _deltaProviderFixtureC,),
          const GraphEdge(from: _deltaProviderFixtureB, to: _deltaProviderFixtureC,),
          const GraphEdge(from: _deltaProviderFixtureC, to: _deltaProviderFixtureD,),
        },
      );
      expect(actual, expected);
    });
  });
}
