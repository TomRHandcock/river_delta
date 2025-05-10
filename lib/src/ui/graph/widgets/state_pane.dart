import 'package:devtools_app_shared/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:river_delta/src/engine/providers/models.dart';

class ProviderStatePane extends StatelessWidget {
  final List<ProviderState> states;

  const ProviderStatePane({super.key, required this.states});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        AreaPaneHeader(
          title: Text(
            "State history",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          roundedTopBorder: false,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              final state = states[index];
              return _StateItem(
                state: state,
                isEvenIndex: index.isEven,
              );
            },
            itemCount: states.length,
          ),
        ),
      ],
    );
  }
}

class _StateItem extends StatelessWidget {
  final ProviderState state;
  final bool isEvenIndex;

  const _StateItem({required this.state, this.isEvenIndex = false});

  String get _iconAssetName => switch (state.asyncState) {
        ProviderAsyncState.loading => "assets/image/ic_loading.svg",
        ProviderAsyncState.error => "assets/image/ic_error.svg",
        _ => "assets/image/ic_data.svg",
      };

  Color _getBackgroundColor(BuildContext context, bool isEvenIndex) =>
      switch (isEvenIndex) {
        true => Theme.of(context).colorScheme.alternatingBackgroundColor1,
        false => Theme.of(context).colorScheme.alternatingBackgroundColor2,
      };

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: _getBackgroundColor(context, isEvenIndex),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: SvgPicture.asset(
              _iconAssetName,
              height: 36,
              width: 36,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(state.name),
                Text(
                  state.timestamp.toIso8601String(),
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
