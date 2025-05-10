import 'package:devtools_app_shared/ui.dart';
import 'package:flutter/material.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_state.dart';

class DependenciesPane extends StatelessWidget {
  final List<DeltaProviderDependency> dependencies;

  const DependenciesPane({
    super.key,
    required this.dependencies,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        AreaPaneHeader(
          roundedTopBorder: false,
          title: Text(
            "Dependencies",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        for (final dependency in dependencies)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child:
                Text("${dependency.name}(${dependency.arguments.join(", ")})"),
          ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
