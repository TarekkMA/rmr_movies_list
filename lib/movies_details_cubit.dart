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

@freezed
sealed class MoviesDetailsEvent with _$MoviesDetailsEvent {
  const factory MoviesDetailsEvent.fetchMovie(int movieId) = _FetchMovie;
  const factory MoviesDetailsEvent.toggleFavorite(int movieId) =
      _ToggleFavorite;
  const factory MoviesDetailsEvent.toggleWatched(int movieId) = _ToggleWatched;
  const factory MoviesDetailsEvent.repoChanged() = _RepoChanged;
}

class MoviesDetailsBloc extends Bloc<MoviesDetailsEvent, MoviesDetailsState> {
  MoviesDetailsBloc(int movieId, this._repo)
      : super(const MoviesDetailsState.loading()) {
    on<_FetchMovie>((event, emit) => _fetchMovieDetails(emit, event.movieId));
    on<_ToggleFavorite>((event, emit) => _toggleFavorite(emit, event.movieId));
    on<_ToggleWatched>((event, emit) => _toggleWatched(emit, event.movieId));

    on<_RepoChanged>((event, emit) {
      if (state is MoviesDetailsLoaded) {
        emit(
          (state as MoviesDetailsLoaded).copyWith(
            isFavorite:
                _repo.isFavorite((state as MoviesDetailsLoaded).movie.id),
            isWatched: _repo.isWatched((state as MoviesDetailsLoaded).movie.id),
          ),
        );
      }
    });

    add(MoviesDetailsEvent.fetchMovie(movieId));
    _repo.addListener(_repoChangeListener);
  }

  final MoviesRepo _repo;

  void _repoChangeListener() {
    add(const MoviesDetailsEvent.repoChanged());
  }

  void _fetchMovieDetails(Emitter<MoviesDetailsState> emit, int movieId) {
    final movie = _repo.getMovieById(movieId);
    if (movie == null) {
      emit(const MoviesDetailsState.error("Movie not found"));
      return;
    }

    final isFavorite = _repo.isFavorite(movieId);
    final isWatched = _repo.isWatched(movieId);

    emit(MoviesDetailsState.loaded(movie, isFavorite, isWatched));
  }

  void _toggleFavorite(Emitter<MoviesDetailsState> emit, int movieId) {
    if (state is! MoviesDetailsLoaded) return;
    _repo.toggleFavorite(movieId);
    emit((state as MoviesDetailsLoaded)
        .copyWith(isFavorite: _repo.isFavorite(movieId)));
  }

  void _toggleWatched(Emitter<MoviesDetailsState> emit, int movieId) {
    if (state is! MoviesDetailsLoaded) return;
    _repo.toggleWatched(movieId);
    emit((state as MoviesDetailsLoaded)
        .copyWith(isWatched: _repo.isWatched(movieId)));
  }

  @override
  Future<void> close() {
    _repo.removeListener(_repoChangeListener);
    return super.close();
  }
}
