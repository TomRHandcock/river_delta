import 'package:example/src/engine/feature/books/books_use_case.dart';
import 'package:example/src/ui/screens/book_list/viewmodel/book_list_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'book_list_viewmodel.g.dart';

@riverpod
Future<BookListState> bookListViewmodel(Ref ref) async {
  final data = await ref.watch(bookListUseCaseProvider.future);
  return BookListState(data: data);
}
