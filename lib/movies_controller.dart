import 'package:dio/dio.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';

class MoviesController extends ChangeNotifier {
  final _dio = Dio();

  List<Movie> _movies = [];
  IList<Movie> get movies => _movies.lock;
  IList<Movie> get favorites => _movies.where((m) => m.isFavorite).toIList();
  IList<Movie> get watched => _movies.where((m) => m.isWatched).toIList();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void fetchMovies() async {
    _isLoading = true;
    notifyListeners();
    final res = await _dio.get("https://yts.mx/api/v2/list_movies.json");
    _isLoading = false;
    _movies = (res.data["data"]["movies"] as Iterable<dynamic>)
        .map((i) => Movie(
              title: i["title"],
              imageUrl: i["large_cover_image"],
              isFavorite: false,
              isWatched: false,
            ))
        .toList();
    notifyListeners();
  }

  void toggleFavorite(Movie movie) {
    final index = _movies.indexOf(movie);
    _movies[index] = movie.copyWith(isFavorite: !movie.isFavorite);
    notifyListeners();
  }

  void toggleWatched(Movie movie) {
     final index = _movies.indexOf(movie);
    _movies[index] = movie.copyWith(isWatched: !movie.isWatched);
    notifyListeners(); 
  }
}

class Movie {
  final String title;
  final String imageUrl;
  final bool isFavorite;
  final bool isWatched;

  Movie({
    required this.title,
    required this.imageUrl,
    required this.isFavorite,
    required this.isWatched,
  });

  Movie copyWith({
    String? title,
    String? imageUrl,
    bool? isFavorite,
    bool? isWatched,
  }) =>
      Movie(
        title: title ?? this.title,
        imageUrl: imageUrl ?? this.imageUrl,
        isFavorite: isFavorite ?? this.isFavorite,
        isWatched: isWatched ?? this.isWatched,
      );

  @override
  String toString() =>
      "Movie(title: $title, imageUrl: $imageUrl, isFavorite: $isFavorite, isWatched: $isWatched)";

  @override
  operator ==(o) =>
      o is Movie &&
      o.title == title &&
      o.imageUrl == imageUrl &&
      o.isFavorite == isFavorite && 
      o.isWatched == isWatched;
}
