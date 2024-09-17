import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/foundation.dart';
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

@freezed
class MoviesEvent with _$MoviesEvent {
  const factory MoviesEvent.fetchMovies() = _FetchMovies;
  const factory MoviesEvent.changeQuery(String newQuery) = _ChangeQuery;
  const factory MoviesEvent.repoChanged() = _RepoChanged;
}

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final MoviesRepo _repo;

  MoviesBloc(this._repo) : super(MoviesState.initial()) {
    on<_FetchMovies>((event, emit) => _fetchMovies(emit));
    on<_ChangeQuery>((event, emit) {
      emit(state.copyWith(query: event.newQuery.trim()));
    });
    on<_RepoChanged>((event, emit) {
      emit(state.copyWith(
        favoriteMovies: _repo.favoriteMovies,
        watchedMovies: _repo.watchedMovies,
      ));
    });

    _repo.addListener(_repoChangeListener);
  }

  void _repoChangeListener() {
    add(const MoviesEvent.repoChanged());
  }

  Future<void> _fetchMovies(Emitter<MoviesState> emit) async {
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

  @override
  Future<void> close() {
    _repo.removeListener(_repoChangeListener);
    return super.close();
  }
}
