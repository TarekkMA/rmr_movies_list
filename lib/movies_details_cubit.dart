import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_flutter/movie.dart';
import 'package:movie_flutter/movies_cubit.dart';
import 'package:movie_flutter/movies_repo.dart';

part 'movies_details_cubit.freezed.dart';

@freezed
sealed class MoviesDetailsState with _$MoviesDetailsState {
  const factory MoviesDetailsState.loading() = MoviesDetailsLoading;
  const factory MoviesDetailsState.error(String message) = MoviesDetailsError;
  const factory MoviesDetailsState.loaded(
    Movie movie,
    bool isFavorite,
    bool isWatched,
  ) = MoviesDetailsLoaded;
}


class MoviesDetailsCubit extends Cubit<MoviesDetailsState> {
  MoviesDetailsCubit(int movieId, this._repo) : super(const MoviesDetailsState.loading()) {
    fetchMovieDetails(movieId);
    _repo.addListener(_repoStateChanged);
  }

  final MoviesRepo _repo;

  void _repoStateChanged() {
    if (state is MoviesDetailsLoaded) {
      emit(
        (state as MoviesDetailsLoaded).copyWith(
          isFavorite: _repo.isFavorite((state as MoviesDetailsLoaded).movie.id),
          isWatched: _repo.isWatched((state as MoviesDetailsLoaded).movie.id),
        ),
      );
    }
  }

  void fetchMovieDetails(int movieId) {
    final movie = _repo.getMovieById(movieId);
    if (movie == null) {
      emit(const MoviesDetailsState.error("Movie not found"));
      return;
    }

    final isFavorite = _repo.isFavorite(movieId);
    final isWatched = _repo.isWatched(movieId);

    emit(MoviesDetailsState.loaded(movie, isFavorite, isWatched));
  }

  void toggleFavorite(int movieId) {
    if (state is! MoviesDetailsLoaded) return;
    _repo.toggleFavorite(movieId);
    emit((state as MoviesDetailsLoaded)
        .copyWith(isFavorite: _repo.isFavorite(movieId)));
  }

  void toggleWatched(int movieId) {
    if (state is! MoviesDetailsLoaded) return;
    _repo.toggleWatched(movieId);
    emit((state as MoviesDetailsLoaded)
        .copyWith(isWatched: _repo.isWatched(movieId)));
  }

  @override
  Future<void> close() {
    _repo.removeListener(_repoStateChanged);
    return super.close();
  }
}
