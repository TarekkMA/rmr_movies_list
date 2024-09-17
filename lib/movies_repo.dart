import 'package:dio/dio.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/movie.dart';
import 'package:movie_flutter/movies_cubit.dart';

class MoviesRepo extends ChangeNotifier {
  final _dio = Dio();

  List<Movie> _movies = [];
  Set<int> _favoriteMovies = {};
  Set<int> _watchedMovies = {};

  IList<Movie> get movies => _movies.lock;

  IList<Movie> get favoriteMovies =>
      _movies.where((m) => _favoriteMovies.contains(m.id)).toIList();

  IList<Movie> get watchedMovies =>
      _movies.where((m) => _watchedMovies.contains(m.id)).toIList();

  Future<IList<Movie>> fetchMovies() async {
    final res = await _dio
        .get("https://yts.mx/api/v2/list_movies.json", queryParameters: {
      "limit": 50,
    });

    final movies = Movie.fromJsonList(res.data["data"]["movies"]);

    movies.shuffle();
    _movies = movies;

    return _movies.lock;
  }

  Movie? getMovieById(int movieId) {
    return _movies.where((m) => m.id == movieId).firstOrNull;
  }

  void toggleFavorite(int movieId) {
    if (_favoriteMovies.contains(movieId)) {
      _favoriteMovies.remove(movieId);
    } else {
      _favoriteMovies.add(movieId);
    }
    notifyListeners();
  }

  void toggleWatched(int movieId) {
    if (_watchedMovies.contains(movieId)) {
      _watchedMovies.remove(movieId);
    } else {
      _watchedMovies.add(movieId);
    }
    notifyListeners();
  }

  bool isFavorite(int movieId) => _favoriteMovies.contains(movieId);
  bool isWatched(int movieId) => _watchedMovies.contains(movieId);
}
