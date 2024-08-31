import 'package:example/src/engine/books/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_list_state.freezed.dart';

@freezed
class BookListState with _$BookListState {
  const factory BookListState({
    required BookList data,
  }) = _BookListState;
}
