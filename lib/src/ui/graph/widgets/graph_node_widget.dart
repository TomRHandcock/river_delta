import 'package:flutter/material.dart';
import 'package:river_delta/src/ui/components/animation/glow_transformer.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_state.dart';

import 'custom_graph/custom_graph_widget.dart';

class GraphNodeWidget extends StatefulWidget {
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
  State<GraphNodeWidget> createState() => _GraphNodeWidgetState();
}

class _GraphNodeWidgetState extends State<GraphNodeWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _stateUpdateAnimationController;
  late final GlowTransformer _glowTransformer;

  @override
  void initState() {
    super.initState();
    _stateUpdateAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    _glowTransformer = GlowTransformer();
  }

  @override
  void didUpdateWidget(covariant GraphNodeWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    final oldStates = oldWidget.node.provider.states;
    final newStates = widget.node.provider.states;
    if (newStates.length > oldStates.length) {
      _stateUpdateAnimationController.reset();
      _stateUpdateAnimationController.animateTo(1.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    final localArguments = widget.node.provider.arguments;
    return CustomGraphParentDataWidget(
      node: widget.node,
      child: _AnimatedSelectionRing(
        isSelected: widget.isSelected,
        child: Material(
          child: InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: () {
              widget.onSelected.call(widget.node.provider);
            },
            child: AnimatedBuilder(
              animation: _stateUpdateAnimationController,
              builder: (context, child) => Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: switch (widget.isSelected) {
                      true => Colors.deepPurpleAccent,
                      false => Colors.greenAccent
                    },
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: Color.lerp(
                      widget.backgroundColor,
                      Colors.amber,
                      _glowTransformer
                          .transform(_stateUpdateAnimationController.value)),
                ),
                padding: const EdgeInsets.all(8),
                child: child,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(widget.node.provider.name),
                  Text(localArguments.toString()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _stateUpdateAnimationController.dispose();
    super.dispose();
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
