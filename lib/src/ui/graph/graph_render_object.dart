import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:river_delta/src/engine/utils/utils.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_state.dart';

class CustomGraphWidgetParentData extends ContainerBoxParentData<RenderBox> {
  GraphNode? node;

  CustomGraphWidgetParentData();
}

class RenderCustomGraphWidget extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, CustomGraphWidgetParentData>,
        DebugOverflowIndicatorMixin {
  GraphState _graph;
  late List<List<GraphNode>> _layeredTree;
  Map<GraphNode, Rect> _cachedChildRects = {};

  RenderCustomGraphWidget({required GraphState graph}) : _graph = graph {
    _layeredTree = _buildLayeredTree(graph);
  }

  GraphState get graph => _graph;

  set graph(GraphState value) {
    if (_graph == value) {
      return;
    }
    _graph = value;
    _layeredTree = _buildLayeredTree(graph);
    markNeedsLayout();
  }

  List<List<GraphNode>> _buildLayeredTree(GraphState graph) {
    final allProviders = graph.nodes.map((node) => node.provider).toSet();
    return graph.nodes.fold(List.generate(10, (_) => []), (acc, cur) {
      final layerIndex = cur.distanceToRoot(allProviders, longest: true);
      final existingOnLayer = acc.elementAtOrNull(layerIndex) ?? [];
      final newLayer = existingOnLayer + [cur];
      acc[layerIndex] = newLayer.toList();
      return acc;
    });
  }

  Offset _getOffsetForGraphNode(
      GraphNode node, Set<DeltaProvider> allProviders) {
    final y = node.distanceToRoot(allProviders, longest: true);
    final x = _layeredTree[y].indexOf(node);
    return Offset(x * 250, y * 120) + Offset(100, 100);
  }

  @override
  void setupParentData(covariant RenderObject child) {
    if (child.parentData is! CustomGraphWidgetParentData) {
      child.parentData = CustomGraphWidgetParentData();
    }
  }

  @override
  bool hitTestSelf(Offset position) => size.contains(position);

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    RenderBox? child = firstChild;
    bool hit = false;
    while (child != null) {
      final childPosition = child.globalToLocal(position);
      hit = hit || child.hitTest(result, position: childPosition);
      child = childAfter(child);
    }
    return hit;
  }

  @override
  void performLayout() {
    RenderBox? child = firstChild;
    while (child != null) {
      child.layout(const BoxConstraints());
      child = childAfter(child);
    }
    size = Size(5000, 5000);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    _cachedChildRects.clear();
    final allProviders = graph.nodes.map((node) => node.provider).toSet();
    RenderBox? child = firstChild;
    while (child != null) {
      final parentData = child.parentData as CustomGraphWidgetParentData;
      final graphNode = parentData.node;
      if (graphNode != null) {
        final offset = _getOffsetForGraphNode(graphNode, allProviders);
        final rect = Rect.fromCenter(center: offset, width: child.size.width, height: child.size.height);
        _cachedChildRects[graphNode] = rect;
      }
      child = childAfter(child);
    }
    final canvas = context.canvas;
    final edgePaint = Paint()
      ..color = Colors.lightBlueAccent
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;
    for (final edge in _graph.edges) {
      final startNode =
          _graph.nodes.firstWhere((it) => it.provider.name == edge.from.name);
      final endNode =
          _graph.nodes.firstWhere((it) => it.provider.name == edge.to.name);
      final startOffset = _cachedChildRects[startNode]?.center ?? Offset.zero;
      final endOffset = _cachedChildRects[endNode]?.center ?? Offset.zero;
      final edgeRect = Rect.fromPoints(startOffset, endOffset);
      final oneNodeIsTopLeft = startOffset == edgeRect.topLeft || endOffset == edgeRect.topLeft;
      final edgePath = switch(oneNodeIsTopLeft) {
        true => Path()
          ..moveTo(edgeRect.topLeft.dx, edgeRect.topLeft.dy)
          ..quadraticBezierTo(
            edgeRect.centerLeft.dx,
            edgeRect.centerLeft.dy,
            edgeRect.center.dx,
            edgeRect.center.dy,
          )
          ..quadraticBezierTo(
            edgeRect.centerRight.dx,
            edgeRect.centerRight.dy,
            edgeRect.bottomRight.dx,
            edgeRect.bottomRight.dy,
          ),
        false => Path()
          ..moveTo(edgeRect.topRight.dx, edgeRect.topRight.dy)
          ..quadraticBezierTo(
            edgeRect.centerRight.dx,
            edgeRect.centerRight.dy,
            edgeRect.center.dx,
            edgeRect.center.dy,
          )
          ..quadraticBezierTo(
            edgeRect.centerLeft.dx,
            edgeRect.centerLeft.dy,
            edgeRect.bottomLeft.dx,
            edgeRect.bottomLeft.dy,
          )
      };
      canvas.drawPath(edgePath, edgePaint);
    }
    child = firstChild;
    while (child != null) {
      final parentData = child.parentData as CustomGraphWidgetParentData;
      final graphNode = parentData.node;
      if (graphNode != null) {
        final offset = _cachedChildRects[graphNode]?.topLeft ?? Offset.zero;
        child.paint(context, offset);
      }
      child = childAfter(child);
    }
  }

  @override
  void applyPaintTransform(covariant RenderObject child, Matrix4 transform) {
    final node = child.parentData?.asOrNull<CustomGraphWidgetParentData>()?.node;
    if(node == null) {
      return;
    }
    final rect = _cachedChildRects[node];
    if(rect == null) {
      return;
    }
    // TODO: This offset accounts for the `boundaryMargin`, remove this hard-coded value!
    transform.translate(rect.left - 32, rect.top - 32);
  }
}
