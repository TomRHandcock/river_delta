import 'package:example/src/engine/feature/favorites/favorites_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'books_repository.dart';
import 'models.dart';

part 'book_details_use_case.g.dart';

@riverpod
class BookDetailsUseCase extends _$BookDetailsUseCase {
  @override
  FutureOr<BookWithFavorite> build(String id) async {
    final books = await ref.watch(booksRepositoryProvider.future);
    final book = books.books.firstWhere((book) => book.id == id);
    final isFavorite = ref.read(favoritesRepositoryProvider).contains(book.id);
    return BookWithFavorite(book: Book.fromDto(book), favorite: isFavorite);
  }

  void toggleFavorite(bool isFavorite) {
    final repository = ref.read(favoritesRepositoryProvider.notifier);
    final book = state.valueOrNull;
    if(book == null) {
      return;
    }
    if(isFavorite) {
      repository.addFavorite(book.book.id);
    } else {
      repository.removeFavourite(book.book.id);
    }
  }
}