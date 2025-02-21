import 'dart:convert';

import 'package:example/src/engine/feature/books/models.dart';
import 'package:mockzilla/mockzilla.dart';

final mockzillaConfig = MockzillaConfig().addEndpoint(
  () => EndpointConfig(
    name: "GET Books",
    endpointMatcher: (request) =>
        request.method == HttpMethod.get && request.uri.endsWith("/books"),
    defaultHandler: (_) => MockzillaHttpResponse(
        body: jsonEncode(BookListDto(books: [
      BookDto(
        id: "000",
        title: "The Data Detective",
        author: "Tim Harford",
      ),
      BookDto(
        id: "001",
        title: "Prisoners of Geograph",
        author: "Tim Marshall",
      ),
      BookDto(
        id: "002",
        title: "The Power of Geography",
        author: "Tim Marshall",
      ),
      BookDto(
        id: "003",
        title: "The Future of Geography",
        author: "Tim Marshall",
      ),
      BookDto(
        id: "004",
        title: "Metro 2033",
        author: "Dmitry Glukhovsky",
      ),
      BookDto(
        id: "005",
        title: "Metro 2034",
        author: "Dmitry Glukhovsky",
      ),
      BookDto(
        id: "006",
        title: "Metro 2035",
        author: "Dmitry Glukhovsky",
      ),
      BookDto(
        id: "007",
        title: "Origins",
        author: "Lewis Dartnell",
      ),
      BookDto(
        id: "008",
        title: "The Theory of Everything Else",
        author: "Dan Schreiber",
      ),
      BookDto(
        id: "009",
        title: "A Short History of Nearly Everything",
        author: "Bryson",
      ),
      BookDto(
        id: "010",
        title: "The Blind Watchmaker",
        author: "Richard Dawkins",
      ),
      BookDto(
        id: "011",
        title: "Coders",
        author: "Clive Thompson",
      ),
      BookDto(
        id: "012",
        title: "Artemis",
        author: "Andy Weir",
      ),
      BookDto(
        id: "013",
        title: "The Martian",
        author: "Andy Weir",
      ),
      BookDto(
        id: "014",
        title: "Project Hail Mary",
        author: "Andy Weir",
      ),
      BookDto(
        id: "015",
        title: "Humble Pi",
        author: "Matt Parker",
      ),
      BookDto(
        id: "016",
        title: "Sapiens",
        author: "Yuval Noah Harari",
      ),
    ]))),
    errorHandler: (_) => MockzillaHttpResponse(),
  ),
);
