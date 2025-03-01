import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:example/src/ui/screens/book_details/viewmodel/book_details_state.dart';
import 'package:example/src/ui/screens/book_details/viewmodel/book_details_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class BookDetailsScreen extends ConsumerWidget {
  final String bookId;

  const BookDetailsScreen({
    super.key,
    required this.bookId,
  });

  _onFavoritePressed(WidgetRef ref, bool isFavorite) => ref
      .read(bookDetailsViewmodelProvider(bookId).notifier)
      .toggleFavorite(isFavorite);

  _onRetryPressed(WidgetRef ref) =>
      ref.refresh(bookDetailsViewmodelProvider(bookId).future).ignore();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bookDetailsViewmodelProvider(bookId));
    return BookDetailsContent(
      state: state,
      onFavoritePressed: (isFavorite) => _onFavoritePressed(ref, isFavorite),
      onRetryPressed: () => _onRetryPressed(ref),
    );
  }
}

class BookDetailsContent extends StatelessWidget {
  final AsyncValue<BookDetailsState> state;
  final Function(bool isFavorite)? onFavoritePressed;
  final Function()? onRetryPressed;

  const BookDetailsContent({
    super.key,
    required this.state,
    required this.onFavoritePressed,
    required this.onRetryPressed,
  });

  @override
  Widget build(BuildContext context) {
    final isFavorite = state.valueOrNull?.book.favorite;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book details"),
        actions: [
          if (isFavorite != null)
            IconButton(
              onPressed: () => onFavoritePressed?.call(!isFavorite),
              icon: Icon(
                switch (isFavorite) {
                  true => Icons.favorite,
                  false => Icons.favorite_border,
                },
                color: Colors.red,
              ),
            ),
        ],
      ),
      body: switch (state) {
        AsyncData(:final value) => _SuccessState(state: value),
        AsyncError() =>
          _ErrorState(onRetryPressed: () => onRetryPressed?.call()),
        _ => const Center(
            child: CircularProgressIndicator(),
          )
      },
    );
  }
}

class _SuccessState extends StatelessWidget {
  final BookDetailsState state;

  const _SuccessState({
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        Text(
          state.book.book.title,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          state.book.book.author,
          style: Theme.of(context).textTheme.bodyLarge,
        )
      ],
    );
  }
}

class _ErrorState extends StatelessWidget {
  final Function() onRetryPressed;

  const _ErrorState({
    required this.onRetryPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("An error occurred"),
        FilledButton(
          onPressed: onRetryPressed,
          child: const Text("Retry"),
        ),
      ],
    );
  }
}
