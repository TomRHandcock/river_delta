import 'package:example/src/engine/feature/books/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_details_state.freezed.dart';

@freezed
abstract class BookDetailsState with _$BookDetailsState {
  const factory BookDetailsState({
    required BookWithFavorite book,
  }) = _BookDetailsState;
}
