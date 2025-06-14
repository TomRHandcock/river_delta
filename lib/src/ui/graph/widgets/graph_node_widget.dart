import 'package:flutter/material.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_state.dart';

import 'custom_graph/custom_graph_widget.dart';

class GraphNodeWidget extends StatelessWidget {
  final GraphNode node;
  final bool isSelected;
  final Function(DeltaProvider provider) onSelected;
  final Color backgroundColor;

  const GraphNodeWidget({
    super.key,
    required this.node,
    required this.isSelected,
    required this.onSelected,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final localArguments = node.provider.arguments;
    return CustomGraphParentDataWidget(
      node: node,
      child: _AnimatedSelectionRing(
        isSelected: isSelected,
        child: Material(
          child: InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: () {
              onSelected.call(node.provider);
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: switch (isSelected) {
                    true => Colors.deepPurpleAccent,
                    false => Colors.greenAccent
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
      ),
    );
  }
}

class _AnimatedSelectionRing extends StatefulWidget {
  final Widget child;
  final bool isSelected;

  const _AnimatedSelectionRing({
    required this.child,
    required this.isSelected,
  });

  @override
  State<_AnimatedSelectionRing> createState() => _AnimatedSelectionRingState();
}

class _AnimatedSelectionRingState extends State<_AnimatedSelectionRing>
    with TickerProviderStateMixin {
  static const _selectedBorderDuration = Duration(milliseconds: 150);
  static const _highlightRingDistance = 4.0;
  static const _highlightRingWidth = 1.0;

  late final AnimationController _selectedBorderController;

  final _totalReservedSpace = _highlightRingWidth + _highlightRingDistance;

  Animation<double> get _animatedHighlightRingWidth =>
      Tween(begin: 0.0, end: _highlightRingWidth)
          .animate(_selectedBorderController);

  Animation<double> get _animatedHighlightRingDistance =>
      Tween(begin: 0.0, end: _highlightRingDistance)
          .animate(_selectedBorderController);

  @override
  void initState() {
    super.initState();
    _selectedBorderController = AnimationController(
      vsync: this,
      duration: _selectedBorderDuration,
    );
  }

  @override
  void didUpdateWidget(covariant _AnimatedSelectionRing oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isSelected != oldWidget.isSelected) {
      if (widget.isSelected) {
        _selectedBorderController.forward();
      } else {
        _selectedBorderController.reverse();
      }
    }
  }

  @override
  void dispose() {
    _selectedBorderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animatedHighlightRingDistance,
      builder: (context, child) => Padding(
        padding: EdgeInsets.all(
          _totalReservedSpace - _animatedHighlightRingDistance.value,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: switch (_animatedHighlightRingWidth.value) {
              0 => null,
              _ => Border.all(
                  width: _animatedHighlightRingWidth.value,
                  color: Colors.deepPurpleAccent,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
            },
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: _animatedHighlightRingDistance.value,
                color: Colors.transparent,
                strokeAlign: BorderSide.strokeAlignOutside,
              ),
            ),
            padding: EdgeInsets.all(_animatedHighlightRingDistance.value),
            child: child,
          ),
        ),
      ),
      child: widget.child,
    );
  }
}
