import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorites_repository.g.dart';

@Riverpod(keepAlive: true)
class FavoritesRepository extends _$FavoritesRepository {

  final List<String> _favorites = [];

  @override
  List<String> build() {
    return _favorites;
  }

  void addFavorite(String id) {
    _favorites.add(id);
    ref.notifyListeners();
  }

  void removeFavourite(String id) {
    _favorites.remove(id);
    ref.notifyListeners();
  }
}