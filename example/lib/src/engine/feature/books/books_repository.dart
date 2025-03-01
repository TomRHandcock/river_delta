import 'package:example/src/engine/feature/books/books_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'models.dart';

part 'books_repository.g.dart';

@riverpod
Future<BookListDto> booksRepository(Ref ref) async {
  final booksClient = ref.watch(booksClientProvider);
  return booksClient.fetchBooks();
}
