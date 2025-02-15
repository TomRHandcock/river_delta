import 'package:devtools_app_shared/ui.dart';
import 'package:flutter/material.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_state.dart';

class ProviderDetails extends StatelessWidget {
  final DeltaProvider provider;

  const ProviderDetails({
    super.key,
    required this.provider,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            provider.name,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(child: _ArgumentsPane(arguments: provider.arguments)),
        Expanded(child: _DependenciesPane(dependencies: provider.dependencies)),
      ],
    );
  }
}

class _ArgumentsPane extends StatelessWidget {
  final Set<String> arguments;

  const _ArgumentsPane({required this.arguments});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        AreaPaneHeader(
          roundedTopBorder: false,
          title: Text(
            "Parameters",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        for (final argument in arguments)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(argument),
          ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

class _DependenciesPane extends StatelessWidget {
  final List<DeltaProviderDependency> dependencies;

  const _DependenciesPane({
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
