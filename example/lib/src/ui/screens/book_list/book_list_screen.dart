import 'package:auto_route/auto_route.dart';
import 'package:example/src/engine/books/models.dart';
import 'package:example/src/engine/router/app_router.gr.dart';
import 'package:example/src/ui/screens/book_list/viewmodel/book_list_state.dart';
import 'package:example/src/ui/screens/book_list/viewmodel/book_list_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class BookListScreen extends ConsumerWidget {
  const BookListScreen({super.key});

  _onBookPressed(BuildContext context, Book book) {
    AutoRouter.of(context).push(
      BookDetailsRoute(bookId: book.id),
    );
  }

  _onRetryPressed(WidgetRef ref) {
    ref.refresh(bookListViewmodelProvider);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bookListViewmodelProvider);
    return BookListContent(
      state: state,
      onBookPressed: (book) => _onBookPressed(context, book),
      onRetryPressed: () => _onRetryPressed(ref),
    );
  }
}

class BookListContent extends StatelessWidget {
  final AsyncValue<BookListState> state;
  final Function(Book book)? onBookPressed;
  final Function()? onRetryPressed;

  const BookListContent({
    super.key,
    required this.state,
    this.onBookPressed,
    this.onRetryPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Books"),
      ),
      body: switch (state) {
        AsyncData(:final value) => _SuccessState(
            state: value,
            onBookPressed: (book) => onBookPressed?.call(book),
          ),
        AsyncError() => _ErrorState(
            onRetryPressed: () => onRetryPressed?.call(),
          ),
        _ => const Center(
            child: CircularProgressIndicator(),
          )
      },
    );
  }
}

class _SuccessState extends StatelessWidget {
  final BookListState state;
  final Function(Book book) onBookPressed;

  const _SuccessState({
    super.key,
    required this.state,
    required this.onBookPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemBuilder: (BuildContext context, int index) {
        final book = state.data.books[index];
        return Material(
          borderRadius: BorderRadius.circular(8),
          elevation: 2,
          child: ListTile(
            onTap: () => onBookPressed(book),
            title: Text(
              book.title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: Text(
              book.author,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        );
      },
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemCount: state.data.books.length,
    );
  }
}

class _ErrorState extends StatelessWidget {
  final Function() onRetryPressed;

  const _ErrorState({
    super.key,
    required this.onRetryPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("Oops, something has gone wrong"),
          FilledButton(
            onPressed: onRetryPressed,
            child: Text(
              "Try again",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
