import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:river_delta/src/engine/providers/models.dart';
import 'package:river_delta/src/engine/providers/providers_provider.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_state.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_viewmodel.dart';

import '../../../../test_utils/async_utils.dart';
import '../../../../test_utils/create_container.dart';
import 'mock_providers_provider.dart';

part 'fixtures.dart';

void main() async {
  group("Graph view model unit tests", () {
    /// Graph is as follows...
    ///
    ///       D
    ///       |
    ///       C
    ///      / \
    ///     A   B
    ///
    test("build - all providers - returns resolved graph", () async {
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
          GraphNode(
            provider: _deltaProviderFixtureA,
          ),
          GraphNode(
            provider: _deltaProviderFixtureB,
          ),
          GraphNode(
            provider: _deltaProviderFixtureC,
          ),
          GraphNode(
            provider: _deltaProviderFixtureD,
          ),
        },
        edges: {
          GraphEdge(
            from: _deltaProviderFixtureA,
            to: _deltaProviderFixtureC,
          ),
          GraphEdge(
            from: _deltaProviderFixtureB,
            to: _deltaProviderFixtureC,
          ),
          GraphEdge(
            from: _deltaProviderFixtureC,
            to: _deltaProviderFixtureD,
          ),
        },
      );
      expect(actual, expected);
    });

    /// Graph is as follows...
    ///
    ///  A    B    D
    ///
    test("build - missing provider C - returns resolved graph", () async {
      // Setup
      final container = createContainer(overrides: [
        providersProviderProvider.overrideWith(
          () => MockProvidersProvider(() async => [
                _providerModelFixtureA,
                _providerModelFixtureB,
                _providerModelFixtureD,
              ]),
        )
      ]);

      // Run test
      final actual = await container.read(graphViewmodelProvider.future);

      // Verify
      final expected = GraphState(
        nodes: {
          GraphNode(provider: _deltaProviderFixtureA),
          GraphNode(provider: _deltaProviderFixtureB),
          GraphNode(provider: _deltaProviderFixtureD),
        },
        edges: {},
      );
      expect(actual, expected);
    });

    test("build - preserves selected provider", () async {
      // Setup
      final container = createContainer(overrides: [
        providersProviderProvider.overrideWith(
          () => MockProvidersProvider(() async => [
                _providerModelFixtureA,
              ]),
        ),
      ]);
      final states = [];
      final subscription = container.listen(graphViewmodelProvider, (_, state) {
        states.add(state);
      });
      final mockProvidersProvider =
          container.read(providersProviderProvider.notifier);
      await tick();
      container
          .read(graphViewmodelProvider.notifier)
          .selectProvider(_deltaProviderFixtureA);
      await tick();

      // Run test
      mockProvidersProvider.state = AsyncData(
        [_providerModelFixtureA, _providerModelFixtureB],
      );
      await tick();

      // Verify
      expect(
        states,
        [
          AsyncData(
            GraphState(
              nodes: {GraphNode(provider: _deltaProviderFixtureA)},
              edges: {},
            ),
          ),
          AsyncData(
            GraphState(
              nodes: {GraphNode(provider: _deltaProviderFixtureA)},
              edges: {},
              selectedProvider: _deltaProviderFixtureA,
            ),
          ),
          anything,
          AsyncData(
            GraphState(
              nodes: {
                GraphNode(provider: _deltaProviderFixtureA),
                GraphNode(provider: _deltaProviderFixtureB)
              },
              edges: {},
              selectedProvider: _deltaProviderFixtureA,
            ),
          )
        ],
      );

      // Tear down
      subscription.close();
    });
  });
}
