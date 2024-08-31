import 'package:example/src/engine/books/books_use_case.dart';
import 'package:example/src/ui/screens/book_list/viewmodel/book_list_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'book_list_viewmodel.g.dart';

@riverpod
Future<BookListState> bookListViewmodel(BookListViewmodelRef ref) async {
  final data = await ref.watch(bookListUseCaseProvider.future);
  return BookListState(data: data);
}
