import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';

@immutable
class MoviesState {
  const MoviesState({
    required this.query,
    required this.error,
    required this.isLoading,
    required this.movies,
  });

  factory MoviesState.initial() => MoviesState(
        query: "",
        error: null,
        isLoading: true,
        movies: IList<Movie>(),
      );

  final String query;
  final String? error;
  final bool isLoading;
  final IList<Movie> movies;

  bool get hasQuery => query.trim().isNotEmpty;
  bool get hasError => error != null;
  IList<Movie> get filteredMovies => movies
      .where((m) => m.title.toLowerCase().contains(query.toLowerCase()))
      .toIList();
  IList<Movie> get favorites => movies.where((m) => m.isFavorite).toIList();
  IList<Movie> get watched => movies.where((m) => m.isWatched).toIList();

  MoviesState copyWith({
    String? query,
    bool? isLoading,
    IList<Movie>? movies,
    String? error,
  }) =>
      MoviesState(
        query: query ?? this.query,
        isLoading: isLoading ?? this.isLoading,
        movies: movies ?? this.movies,
        error: error ?? this.error,
      );

  @override
  String toString() =>
      "MoviesState(query: $query, isLoading: $isLoading, movies: $movies)";

  @override
  operator ==(o) =>
      o is MoviesState &&
      o.query == query &&
      o.isLoading == isLoading &&
      o.error == error &&
      o.movies == movies;

  @override
  int get hashCode =>
      query.hashCode ^ isLoading.hashCode ^ movies.hashCode ^ error.hashCode;
}

class MoviesCubit extends Cubit<MoviesState> {
  MoviesCubit() : super(MoviesState.initial());

  final _dio = Dio();

  Future<void> fetchMovies() async {
    emit(state.copyWith(isLoading: true));

    try {
      final res =
          await _dio.get("https://yts.mx/api/v2/list_movies.json?limit=50");

      final movies = (res.data["data"]["movies"] as Iterable<dynamic>)
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
          .toIList();

      emit(state.copyWith(movies: movies, isLoading: false));
    } catch (e, stackTrace) {
      debugPrintStack(
        label: e.toString(),
        stackTrace: stackTrace,
      );
      emit(state.copyWith(
        isLoading: false,
        error: "Error fetching movies",
      ));
    }
  }

  void toggleFavorite(int movieId) {
    final index = state.movies.indexWhere((m) => m.id == movieId);
    final movie = state.movies[index];
    final newMovie = movie.copyWith(isFavorite: !movie.isFavorite);
    final newList = state.movies.replace(index, newMovie);
    emit(state.copyWith(movies: newList));
  }

  void toggleWatched(int movieId) {
    final index = state.movies.indexWhere((m) => m.id == movieId);
    final movie = state.movies[index];
    final newMovie = movie.copyWith(isWatched: !movie.isWatched);
    final newList = state.movies.replace(index, newMovie);
    emit(state.copyWith(movies: newList));
  }

  Movie? getMovieById(int movieId) {
    return state.movies.where((m) => m.id == movieId).firstOrNull;
  }

  void changeQuery(String newQuery) {
    emit(state.copyWith(query: newQuery.trim()));
  }
}

@immutable
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

  const Movie({
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
