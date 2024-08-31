import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

@freezed
class BookListDto with _$BookListDto {
  const factory BookListDto({
    required List<BookDto> books,
  }) = _BookListDto;
}

@freezed
class BookDto with _$BookDto {
  const factory BookDto({
    required String id,
    required String title,
    required String author,
  }) = _BookDto;
}

@freezed
class BookList with _$BookList {
  const factory BookList({
    required List<Book> books,
  }) = _BookList;
}

@freezed
class Book with _$Book {
  const factory Book({
    required String id,
    required String title,
    required String author,
  }) = _Book;

  factory Book.fromDto(BookDto dto) => Book(
        id: dto.id,
        title: dto.title,
        author: dto.author,
      );
}
