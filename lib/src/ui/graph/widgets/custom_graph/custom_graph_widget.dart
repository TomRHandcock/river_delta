import 'package:flutter/material.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_state.dart';

import 'graph_render_object.dart';

class CustomGraphWidget extends MultiChildRenderObjectWidget {
  final GraphState graph;
  final Color backgroundColor;
  final Function(DeltaProvider provider)? onProviderSelected;

  const CustomGraphWidget({
    super.key,
    required this.graph,
    required this.backgroundColor,
    this.onProviderSelected,
  });

  @override
  List<Widget> get children => graph.nodes.map((node) {
        final localArguments = node.provider.arguments;
        return CustomGraphParentDataWidget(
          node: node,
          child: Material(
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () {
                onProviderSelected?.call(node.provider);
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: switch (
                        graph.selectedProvider?.shallowEquals(node.provider)) {
                      true => Colors.deepPurpleAccent,
                      null || false => Colors.greenAccent
                    },
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: backgroundColor,
                ),
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(node.provider.name),
                    Text(localArguments.toString())
                  ],
                ),
              ),
            ),
          ),
        );
      }).toList();

  @override
  RenderCustomGraphWidget createRenderObject(BuildContext context) =>
      RenderCustomGraphWidget(graph: graph);

  @override
  void updateRenderObject(
      BuildContext context, RenderCustomGraphWidget renderObject) {
    renderObject.graph = graph;
  }
}

class CustomGraphParentDataWidget
    extends ParentDataWidget<CustomGraphWidgetParentData> {
  final GraphNode node;

  const CustomGraphParentDataWidget({
    super.key,
    required super.child,
    required this.node,
  });

  @override
  void applyParentData(RenderObject renderObject) {
    if (renderObject.parentData is CustomGraphWidgetParentData) {
      (renderObject.parentData as CustomGraphWidgetParentData).node = node;
    }
  }

  @override
  Type get debugTypicalAncestorWidgetClass => CustomGraphWidget;
}
