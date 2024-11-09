import 'package:flutter/material.dart';
import 'package:river_delta/src/ui/graph/graph_render_object.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_state.dart';

class CustomGraphWidget extends MultiChildRenderObjectWidget {
  final GraphState graph;
  final Color backgroundColor;

  const CustomGraphWidget({
    super.key,
    required this.graph,
    required this.backgroundColor,
  });

  @override
  List<Widget> get children => graph.nodes
      .map((node) => CustomGraphParentDataWidget(
            node: node,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.greenAccent,
                ),
                borderRadius: BorderRadius.circular(8),
                color: backgroundColor,
              ),
              padding: const EdgeInsets.all(8),
              child: Text(node.provider.name),
            ),
          ))
      .toList();

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
