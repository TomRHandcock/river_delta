import 'package:devtools_app_shared/ui.dart';
import 'package:flutter/material.dart';
import 'package:river_delta/src/ui/graph/viewmodel/graph_state.dart';
import 'package:river_delta/src/ui/graph/widgets/arguments_pane.dart';
import 'package:river_delta/src/ui/graph/widgets/dependencies_pane.dart';
import 'package:river_delta/src/ui/graph/widgets/state_pane.dart';

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
        Expanded(child: ArgumentsPane(arguments: provider.arguments)),
        Expanded(child: ProviderStatePane(states: provider.states)),
      ],
    );
  }
}
