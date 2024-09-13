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
              id: i["id"],
              title: i["title"],
              imageUrl: i["large_cover_image"],
              backgroundImageUrl: i["background_image"],
              year: i["year"],
              rating: i["rating"].toDouble(),
              runtime: i["runtime"],
              isFavorite: false,
              isWatched: false,
            ))
        .toList();
    notifyListeners();
  }

  void toggleFavorite(int movieId) {
    final index = _movies.indexWhere((m) => m.id == movieId);
    final movie = _movies[index];
    _movies[index] = movie.copyWith(isFavorite: !movie.isFavorite);
    notifyListeners();
  }

  void toggleWatched(int movieId) {
    final index = _movies.indexWhere((m) => m.id == movieId);
    final movie = _movies[index];
    _movies[index] = movie.copyWith(isWatched: !movie.isWatched);
    notifyListeners();
  }

  Movie? getMovieById(int movieId) {
    return _movies.where((m) => m.id == movieId).firstOrNull;
  }
}

class Movie {
  final int id;
  final String title;
  final String imageUrl;
  final String backgroundImageUrl;
  final int year;
  final double rating;
  final int runtime;

  final bool isFavorite;
  final bool isWatched;

  Movie({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.backgroundImageUrl,
    required this.year,
    required this.rating,
    required this.runtime,
    required this.isFavorite,
    required this.isWatched,
  });

  Movie copyWith({
    int? id,
    String? title,
    String? imageUrl,
    String? backgroundImageUrl,
    int? year,
    double? rating,
    int? runtime,
    bool? isFavorite,
    bool? isWatched,
  }) =>
      Movie(
        id: id ?? this.id,
        title: title ?? this.title,
        imageUrl: imageUrl ?? this.imageUrl,
        backgroundImageUrl: backgroundImageUrl ?? this.backgroundImageUrl,
        year: year ?? this.year,
        rating: rating ?? this.rating,
        runtime: runtime ?? this.runtime,
        isFavorite: isFavorite ?? this.isFavorite,
        isWatched: isWatched ?? this.isWatched,
      );

  @override
  String toString() =>
      "Movie(id: $id, title: $title, imageUrl: $imageUrl, isFavorite: $isFavorite, isWatched: $isWatched)";

  @override
  operator ==(o) =>
      o is Movie &&
      o.id == id &&
      o.title == title &&
      o.imageUrl == imageUrl &&
      o.backgroundImageUrl == backgroundImageUrl &&
      o.year == year &&
      o.rating == rating &&
      o.runtime == runtime &&
      o.isFavorite == isFavorite &&
      o.isWatched == isWatched;
}
