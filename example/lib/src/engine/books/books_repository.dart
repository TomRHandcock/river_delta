import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'models.dart';

part 'books_repository.g.dart';

@riverpod
Future<BookListDto> booksRepository(BooksRepositoryRef ref) async {
  return Future.delayed(
    const Duration(seconds: 3),
    () => const BookListDto(
      books: [
        BookDto(
          id: "001",
          title: "Metro 2033",
          author: "Dmitry Glukhovsky",
        ),
        BookDto(
          id: "002",
          title: "Metro 2034",
          author: "Dmitry Glukhovsky",
        ),
        BookDto(
          id: "003",
          title: "Metro 2035",
          author: "Dmitry Glukhovsky",
        ),
        BookDto(
          id: "004",
          title: "Origins",
          author: "Lewis Dartnell",
        ),
        BookDto(
          id: "005",
          title: "The theory of everything else",
          author: "Dan Schreiber",
        ),
        BookDto(
          id: "006",
          title: "A short history of nearly everything",
          author: "Bill Bryson",
        ),
        BookDto(
          id: "007",
          title: "The Blind Watchmaker",
          author: "Richard Dawkins",
        ),
        BookDto(
          id: "008",
          title: "Coders",
          author: "Clive Thompson",
        ),
        BookDto(
          id: "009",
          title: "Project Hail Mary",
          author: "Andy Weir",
        ),
        BookDto(
          id: "010",
          title: "Humble Pi",
          author: "Matt Parker",
        ),
        BookDto(
          id: "011",
          title: "The Hitchhiker's Guide to the Galaxy",
          author: "Douglas Adams",
        ),
        BookDto(
          id: "012",
          title: "The Martian",
          author: "Andy Weir",
        ),
      ],
    ),
  );
}
