import 'package:example/src/engine/books/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_details_state.freezed.dart';

@freezed
class BookDetailsState with _$BookDetailsState {
  const factory BookDetailsState({
    required Book book,
  }) = _BookDetailsState;
}
