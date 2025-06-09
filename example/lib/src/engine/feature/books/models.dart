import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

part 'models.g.dart';

@freezed
abstract class BookListDto with _$BookListDto {
  const factory BookListDto({
    required List<BookDto> books,
  }) = _BookListDto;

  factory BookListDto.fromJson(Map<String, dynamic> json) =>
      _$BookListDtoFromJson(json);
}

@freezed
abstract class BookDto with _$BookDto {
  const factory BookDto({
    required String id,
    required String title,
    required String author,
  }) = _BookDto;

  factory BookDto.fromJson(Map<String, dynamic> json) =>
      _$BookDtoFromJson(json);
}

@freezed
abstract class BookList with _$BookList {
  const factory BookList({
    required List<Book> books,
  }) = _BookList;
}

@freezed
abstract class Book with _$Book {
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

@freezed
abstract class BookWithFavorite with _$BookWithFavorite {
  const factory BookWithFavorite({
    required Book book,
    required bool favorite,
  }) = _BookWithFavourite;
}
