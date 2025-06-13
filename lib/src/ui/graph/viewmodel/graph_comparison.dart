import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_state.dart';

part 'graph_comparison.freezed.dart';

@freezed
abstract class _NodeComparisonProps with _$NodeComparisonProps {
  const factory _NodeComparisonProps({
    required String name,
    required List<String> arguments,
  }) = __NodeComparisonProps;
}

abstract class GraphComparison {
  static bool isShapeEqual(GraphState a, GraphState b) {
    final setEquality = SetEquality();
    final edgesEqual = setEquality.equals(a.edges, b.edges);
    if (!edgesEqual) {
      return false;
    }

    final aNodeProps = a.nodes
        .map((node) => _NodeComparisonProps(
              name: node.provider.name,
              arguments: node.provider.arguments.toList(),
            ))
        .toSet();
    final bNodeProps = b.nodes
        .map((node) => _NodeComparisonProps(
              name: node.provider.name,
              arguments: node.provider.arguments.toList(),
            ))
        .toSet();
    return setEquality.equals(aNodeProps, bNodeProps);
  }
}
