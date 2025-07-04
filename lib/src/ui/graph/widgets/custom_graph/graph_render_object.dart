import 'dart:math';

import 'package:collection/collection.dart';
import 'package:devtools_app_shared/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:river_delta/src/engine/utils/utils.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_comparison.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_state.dart';

class CustomGraphWidgetParentData extends ContainerBoxParentData<RenderBox> {
  late GraphNode node;
  ({int y, int x})? position;
  Size? size;
  Rect? rect;

  CustomGraphWidgetParentData();
}

class RenderCustomGraphWidget extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, CustomGraphWidgetParentData>,
        DebugOverflowIndicatorMixin {
  static const _padding = EdgeInsets.all(100);
  static const _verticalSpacing = 100.0;
  static const _horizontalSpacing = 50.0;

  GraphState _graph;
  late List<List<GraphNode>> _layeredTree;

  RenderCustomGraphWidget({required GraphState graph}) : _graph = graph {
    _layeredTree = _buildLayeredTree(graph);
  }

  GraphState get graph => _graph;

  set graph(GraphState value) {
    final shapesEqual = GraphComparison.isShapeEqual(_graph, value);
    final selectedProviderEqual = _graph.selectedProvider?.let((incumbent) =>
            value.selectedProvider?.shallowEquals(incumbent) ?? false) ??
        false;
    if (shapesEqual && selectedProviderEqual) {
      return;
    }
    _graph = value;
    _layeredTree = _buildLayeredTree(graph);
    markNeedsLayout();
  }

  List<List<GraphNode>> _buildLayeredTree(GraphState graph) {
    final allProviders = graph.nodes.map((node) => node.provider).toSet();
    return graph.nodes.fold(List.generate(graph.depth + 2, (_) => []),
        (acc, cur) {
      final layerIndex = cur.distanceToRoot(allProviders, longest: true);
      final existingOnLayer = acc.elementAtOrNull(layerIndex) ?? [];
      final newLayer = existingOnLayer + [cur];
      acc[layerIndex] = newLayer.toList();
      return acc;
    });
  }

  ({int y, int x})? _getPositionForNode(
      GraphNode node, Set<DeltaProvider> allProviders) {
    final y = node.distanceToRoot(allProviders, longest: true);
    final x = _layeredTree[y]
        .indexWhere((element) => node.provider.shallowEquals(element.provider));
    if (y == -1 || x == -1) {
      return null;
    }
    return (y: y, x: x);
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
    final globalPosition = position.translate(defaultSpacing, defaultSpacing);
    while (child != null) {
      final parentData =
          child.parentData.asOrNull<CustomGraphWidgetParentData>();
      final childRect = parentData?.rect;
      if (childRect != null) {
        final childPosition = childRect.topLeft;
        final positionOnChild =
            globalPosition.translate(-childPosition.dx, -childPosition.dy);
        hit = hit ||
            (child.hasSize && child.hitTest(result, position: positionOnChild));
      }
      child = childAfter(child);
    }
    return hit;
  }

  @override
  void performLayout() {
    if (firstChild == null) {
      size = constraints.smallest;
      return;
    }
    List<List<Size>> sizes = List.generate(
      graph.depth + 1,
      (yPos) => List.generate(_layeredTree[yPos].length, (_) => Size.zero),
    );
    RenderBox? child = firstChild;
    while (child != null) {
      final parentData =
          child.parentData.asOrNull<CustomGraphWidgetParentData>();

      // Cache position of child in the graph.
      if (parentData != null) {
        final node = parentData.node;
        parentData.position = _getPositionForNode(node, graph.allProviders);
      }

      // Always need to layout the child.
      child.layout(const BoxConstraints(), parentUsesSize: true);

      // Use the child's size the update the dimensions of the specific row.
      if (parentData != null && parentData.position != null) {
        parentData.size = child.size;
        sizes[parentData.position!.y][parentData.position!.x] = child.size;
      }
      child = childAfter(child);
    }

    // Compute the rect for each child
    final rowHeights = sizes.map((row) {
      return row.map((size) => size.height).max;
    }).toList();
    child = firstChild;
    while (child != null) {
      final parentData =
          child.parentData.asOrNull<CustomGraphWidgetParentData>();
      if (parentData != null) {
        final left = sizes[parentData.position!.y]
                .slice(0, parentData.position!.x)
                .map((size) => size.width)
                .sum +
            parentData.position!.x * _horizontalSpacing;
        final top = parentData.position!.y * _verticalSpacing +
            rowHeights.slice(0, parentData.position!.y).sum;
        parentData.rect = Rect.fromLTWH(
          _padding.left + left,
          _padding.top + top,
          child.size.width,
          child.size.height,
        );
      }
      child = childAfter(child);
    }

    // Compute overall parent size.
    Size contentSize = sizes.foldIndexed(Size.zero, (yPos, acc, row) {
      return Size(
        max(acc.width, row.map((size) => size.width).sum) +
            max(0, row.length - 1) * _horizontalSpacing,
        acc.height + row.map((size) => size.height).max,
      );
    });
    contentSize = Size(contentSize.width,
        contentSize.height + max(0, sizes.length - 1) * _verticalSpacing);
    final paddedSize = Size(contentSize.width + _padding.horizontal,
        contentSize.height + _padding.vertical);
    size = Size.square(paddedSize.longestSide);

    // Compute row offsets to centre children.
    child = firstChild;
    // Cache rects for all children.
    Map<GraphNode, CustomGraphWidgetParentData> childParentData = {};
    while (child != null) {
      final parentData = child.parentData as CustomGraphWidgetParentData;
      childParentData[parentData.node] = parentData;
      child = childAfter(child);
    }

    final rowOffsets = List.generate(_layeredTree.length, (int yPos) {
      final rowWidth = _computeRowWidth(yPos, childParentData.values.toList());
      return (size.width - rowWidth) / 2;
    });
    childParentData.forEach((node, parentData) {
      parentData.rect =
          parentData.rect!.translate(rowOffsets[parentData.position!.y], 0);
    });
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    _paintEdges(context);

    _paintChildren(context);
  }

  void _paintEdges(PaintingContext context) {
    RenderBox? child = firstChild;
    // Cache rects for all children.
    Map<GraphNode, Rect> childRects = {};
    while (child != null) {
      final parentData = child.parentData as CustomGraphWidgetParentData;
      childRects[parentData.node] = parentData.rect!;
      child = childAfter(child);
    }

    final canvas = context.canvas;
    final edgePaint = Paint()
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;
    for (final edge in _graph.edges) {
      final startNode =
          _graph.nodes.firstWhere((it) => it.provider == edge.from);
      final endNode = _graph.nodes.firstWhere((it) => it.provider == edge.to);
      final startNodeSelected =
          _graph.selectedProvider?.shallowEquals(startNode.provider) ?? false;
      final endNodeSelected =
          _graph.selectedProvider?.shallowEquals(endNode.provider) ?? false;
      if (startNodeSelected || endNodeSelected) {
        edgePaint.color = Colors.deepPurpleAccent;
      } else {
        edgePaint.color = Colors.lightBlueAccent;
      }
      final startOffset = childRects[startNode]?.center ?? Offset.zero;
      final endOffset = childRects[endNode]?.center ?? Offset.zero;
      final edgeRect = Rect.fromPoints(startOffset, endOffset);
      final oneNodeIsTopLeft =
          startOffset == edgeRect.topLeft || endOffset == edgeRect.topLeft;
      final edgePath = switch (oneNodeIsTopLeft) {
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
  }

  void _paintChildren(PaintingContext context) {
    RenderBox? child = firstChild;
    while (child != null) {
      final parentData = child.parentData as CustomGraphWidgetParentData;
      final offset = parentData.rect?.topLeft ?? Offset.zero;
      context.paintChild(child, offset);
      child = childAfter(child);
    }
  }

  double _computeRowWidth(
      int yPos, List<CustomGraphWidgetParentData> children) {
    final childrenOnRow =
        children.where((child) => child.position?.y == yPos).toList();
    return childrenOnRow.map((child) => child.size?.width ?? 0).sum +
        (childrenOnRow.length - 1) * _horizontalSpacing;
  }
}
