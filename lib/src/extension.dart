import 'package:devtools_app_shared/ui.dart';
import 'package:devtools_extensions/devtools_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_delta/src/ui/graph/custom_graph_widget.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_state.dart';
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
    return DeltaContent(state: state);
  }
}

class DeltaContent extends StatelessWidget {
  final AsyncValue<GraphState> state;

  const DeltaContent({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return switch (state) {
      AsyncValue(:final valueOrNull?) => InteractiveViewer(
          constrained: false,
          boundaryMargin: const EdgeInsets.all(32),
          minScale: 0.1,
          child: CustomGraphWidget(
            graph: valueOrNull,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      AsyncError(:final error) => Center(
          child: Text("An error occurred, error:\n$error"),
        ),
      _ => const Center(
          child: CircularProgressIndicator(),
        )
    };
  }
}
