import 'package:dio/dio.dart';
import 'package:example/src/engine/feature/books/models.dart';
import 'package:example/src/engine/network/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'books_client.g.dart';

@riverpod
BooksClient booksClient(Ref ref) {
  return BooksClient(ref.watch(dioProvider));
}

@RestApi()
abstract class BooksClient {
  factory BooksClient(Dio dio, {String? baseUrl}) = _BooksClient;

  @GET("/books")
  Future<BookListDto> fetchBooks();
}