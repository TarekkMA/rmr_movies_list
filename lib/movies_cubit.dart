import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/movie.dart';
import 'package:movie_flutter/movies_repo.dart';
import 'package:state_notifier/state_notifier.dart';

@immutable
class MoviesState {
  const MoviesState({
    required this.query,
    required this.error,
    required this.isLoading,
    required this.movies,
    required this.favoriteMovies,
    required this.watchedMovies,
  });

  factory MoviesState.initial() => MoviesState(
        query: "",
        error: null,
        isLoading: true,
        movies: IList<Movie>(),
        favoriteMovies: IList<Movie>(),
        watchedMovies: IList<Movie>(),
      );

  final String query;
  final String? error;
  final bool isLoading;
  final IList<Movie> movies;
  final IList<Movie> favoriteMovies;
  final IList<Movie> watchedMovies;

  bool get hasQuery => query.trim().isNotEmpty;
  bool get hasError => error != null;
  IList<Movie> get filteredMovies => movies
      .where((m) => m.title.toLowerCase().contains(query.toLowerCase()))
      .toIList();

  MoviesState copyWith({
    String? query,
    bool? isLoading,
    IList<Movie>? movies,
    IList<Movie>? favoriteMovies,
    IList<Movie>? watchedMovies,
    String? error,
  }) =>
      MoviesState(
        query: query ?? this.query,
        isLoading: isLoading ?? this.isLoading,
        movies: movies ?? this.movies,
        favoriteMovies: favoriteMovies ?? this.favoriteMovies,
        watchedMovies: watchedMovies ?? this.watchedMovies,
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
      o.favoriteMovies == favoriteMovies &&
      o.watchedMovies == watchedMovies &&
      o.movies == movies;

  @override
  int get hashCode =>
      query.hashCode ^
      isLoading.hashCode ^
      movies.hashCode ^
      error.hashCode ^
      favoriteMovies.hashCode ^
      watchedMovies.hashCode;
}

class MoviesCubit extends Cubit<MoviesState> {
  final MoviesRepo _repo;

  MoviesCubit(this._repo) : super(MoviesState.initial()) {
    _repo.addListener(_repoStateChanged);
  }

  void _repoStateChanged() {
    emit(state.copyWith(
      favoriteMovies: _repo.favoriteMovies,
      watchedMovies: _repo.watchedMovies,
    ));
  }

  Future<void> fetchMovies() async {
    emit(state.copyWith(isLoading: true));

    try {
      final movies = await _repo.fetchMovies();

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

  void changeQuery(String newQuery) {
    emit(state.copyWith(query: newQuery.trim()));
  }

  @override
  Future<void> close() {
    _repo.removeListener(_repoStateChanged);
    return super.close();
  }
}
