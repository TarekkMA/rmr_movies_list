import 'package:bloc/bloc.dart';
import 'package:movie_flutter/movie.dart';
import 'package:movie_flutter/movies_cubit.dart';
import 'package:movie_flutter/movies_repo.dart';

sealed class MoviesDetailsState {}

class MoviesDetailsLoading extends MoviesDetailsState {}

class MoviesDetailsError extends MoviesDetailsState {
  final String message;

  MoviesDetailsError(this.message);
}

class MoviesDetailsLoaded extends MoviesDetailsState {
  final Movie movie;
  final bool isFavorite;
  final bool isWatched;

  MoviesDetailsLoaded(this.movie, this.isFavorite, this.isWatched);

  MoviesDetailsLoaded copyWith({
    Movie? movie,
    bool? isFavorite,
    bool? isWatched,
  }) =>
      MoviesDetailsLoaded(
        movie ?? this.movie,
        isFavorite ?? this.isFavorite,
        isWatched ?? this.isWatched,
      );
}

class MoviesDetailsCubit extends Cubit<MoviesDetailsState> {
  MoviesDetailsCubit(int movieId, this._repo) : super(MoviesDetailsLoading()) {
    fetchMovieDetails(movieId);
  }

  final MoviesRepo _repo;

  void fetchMovieDetails(int movieId) {
    final movie = _repo.getMovieById(movieId);
    if (movie == null) {
      emit(MoviesDetailsError("Movie not found"));
      return;
    }

    final isFavorite = _repo.isFavorite(movieId);
    final isWatched = _repo.isWatched(movieId);

    emit(MoviesDetailsLoaded(movie, isFavorite, isWatched));
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
}
