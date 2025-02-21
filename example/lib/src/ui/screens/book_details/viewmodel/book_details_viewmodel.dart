import 'package:example/src/engine/feature/books/book_details_use_case.dart';
import 'package:example/src/ui/screens/book_details/viewmodel/book_details_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'book_details_viewmodel.g.dart';

@riverpod
Future<BookDetailsState> bookDetailsViewmodel(
  Ref ref,
  String bookId,
) async {
  final book = await ref.watch(bookDetailsUseCaseProvider(bookId).future);
  return BookDetailsState(book: book);
}
