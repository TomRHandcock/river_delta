import 'package:flutter/material.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_state.dart';
import 'package:river_delta/src/ui/graph/widgets/graph_node_widget.dart';

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
        return GraphNodeWidget(
          node: node,
          isSelected:
              graph.selectedProvider?.shallowEquals(node.provider) == true,
          onSelected: (provider) => onProviderSelected?.call(provider),
          backgroundColor: backgroundColor,
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
