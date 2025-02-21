import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'books_repository.dart';
import 'models.dart';

part 'book_details_use_case.g.dart';

@Riverpod()
Future<Book> bookDetailsUseCase(Ref ref, String id) async {
  final books = await ref.watch(booksRepositoryProvider.future);
  final book = books.books.firstWhere((book) => book.id == id);
  return Book.fromDto(book);
}
