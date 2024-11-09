import 'package:devtools_app_shared/ui.dart';
import 'package:devtools_extensions/devtools_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_delta/src/ui/graph/custom_graph_widget.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_viewmodel.dart';

class RiverDeltaExtension extends StatelessWidget {
  const RiverDeltaExtension({super.key});

  @override
  Widget build(BuildContext context) {
    return const DevToolsExtension(
      child: GraphWrapper(),
    );
  }
}

class GraphWrapper extends ConsumerWidget {
  const GraphWrapper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(graphViewmodelProvider);
    final providers = state.nodes.map((node) => node.provider).toSet();
    return SplitPane(
      axis: Axis.vertical,
      initialFractions: const [0.5, 0.5],
      children: [
        InteractiveViewer(
          constrained: false,
          boundaryMargin: EdgeInsets.all(32),
          minScale: 0.1,
          child: CustomGraphWidget(
            graph: state,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        ListView.builder(
          itemBuilder: (_, int index) {
            final node = state.nodes.toList()[index];
            return Padding(
              padding: const EdgeInsets.all(8),
              child: Text("Node: ${node.provider.name}, "
                  "distance to root: ${node.distanceToRoot(providers, longest: true)}"),
            );
          },
          itemCount: state.nodes.length,
        ),
      ],
    );
  }
}
