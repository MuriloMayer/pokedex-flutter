import 'package:flutter/foundation.dart';
import '../models/pokemon.dart';

class FavoritesProvider with ChangeNotifier {
  final List<Pokemon> _favorites = [];

  List<Pokemon> get favorites => List.unmodifiable(_favorites);

  bool isFavorite(Pokemon pokemon) {
    return _favorites.any((fav) => fav.id == pokemon.id);
  }

  void toggleFavorite(Pokemon pokemon) {
    final existingIndex = _favorites.indexWhere((fav) => fav.id == pokemon.id);
    
    if (existingIndex >= 0) {
      _favorites.removeAt(existingIndex);
    } else {
      _favorites.add(pokemon);
    }
    
    notifyListeners();
  }

  void removeFavorite(Pokemon pokemon) {
    _favorites.removeWhere((fav) => fav.id == pokemon.id);
    notifyListeners();
  }
}