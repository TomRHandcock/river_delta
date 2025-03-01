import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'books_repository.dart';
import 'models.dart';

part 'books_use_case.g.dart';

@riverpod
Future<BookList> bookListUseCase(Ref ref) async {
  final dtos = await ref.watch(booksRepositoryProvider.future);
  final books = dtos.books.map((dto) => Book.fromDto(dto)).toList();
  return BookList(books: books);
}
