import 'package:example/src/engine/books/books_repository.dart';
import 'package:example/src/engine/books/models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'books_use_case.g.dart';

@riverpod
Future<BookList> bookListUseCase(BookListUseCaseRef ref) async {
  final dtos = await ref.watch(booksRepositoryProvider.future);
  final books = dtos.books.map((dto) => Book.fromDto(dto)).toList();
  return BookList(books: books);
}
