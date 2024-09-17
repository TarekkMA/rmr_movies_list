import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_flutter/movie.dart';
import 'package:movie_flutter/movies_repo.dart';
import 'package:state_notifier/state_notifier.dart';

part 'movies_cubit.freezed.dart';

@freezed
class MoviesState with _$MoviesState {
  const MoviesState._();

  const factory MoviesState({
    required String query,
    required String? error,
    required bool isLoading,
    required IList<Movie> movies,
    required IList<Movie> favoriteMovies,
    required IList<Movie> watchedMovies,
  }) = _MoviesState;

  factory MoviesState.initial() => MoviesState(
        query: "",
        error: null,
        isLoading: true,
        movies: IList<Movie>(),
        favoriteMovies: IList<Movie>(),
        watchedMovies: IList<Movie>(),
      );

  bool get hasQuery => query.trim().isNotEmpty;
  bool get hasError => error != null;
  IList<Movie> get filteredMovies => movies
      .where((m) => m.title.toLowerCase().contains(query.toLowerCase()))
      .toIList();
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
