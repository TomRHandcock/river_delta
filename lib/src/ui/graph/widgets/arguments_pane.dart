import 'package:devtools_app_shared/ui.dart';
import 'package:flutter/material.dart';

class ArgumentsPane extends StatelessWidget {
  final Set<String> arguments;

  const ArgumentsPane({super.key, required this.arguments});

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
