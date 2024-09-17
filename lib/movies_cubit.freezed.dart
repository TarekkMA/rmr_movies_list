// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MoviesState {
  String get query => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  IList<Movie> get movies => throw _privateConstructorUsedError;
  IList<Movie> get favoriteMovies => throw _privateConstructorUsedError;
  IList<Movie> get watchedMovies => throw _privateConstructorUsedError;

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoviesStateCopyWith<MoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesStateCopyWith<$Res> {
  factory $MoviesStateCopyWith(
          MoviesState value, $Res Function(MoviesState) then) =
      _$MoviesStateCopyWithImpl<$Res, MoviesState>;
  @useResult
  $Res call(
      {String query,
      String? error,
      bool isLoading,
      IList<Movie> movies,
      IList<Movie> favoriteMovies,
      IList<Movie> watchedMovies});
}

/// @nodoc
class _$MoviesStateCopyWithImpl<$Res, $Val extends MoviesState>
    implements $MoviesStateCopyWith<$Res> {
  _$MoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? error = freezed,
    Object? isLoading = null,
    Object? movies = null,
    Object? favoriteMovies = null,
    Object? watchedMovies = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as IList<Movie>,
      favoriteMovies: null == favoriteMovies
          ? _value.favoriteMovies
          : favoriteMovies // ignore: cast_nullable_to_non_nullable
              as IList<Movie>,
      watchedMovies: null == watchedMovies
          ? _value.watchedMovies
          : watchedMovies // ignore: cast_nullable_to_non_nullable
              as IList<Movie>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesStateImplCopyWith<$Res>
    implements $MoviesStateCopyWith<$Res> {
  factory _$$MoviesStateImplCopyWith(
          _$MoviesStateImpl value, $Res Function(_$MoviesStateImpl) then) =
      __$$MoviesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String query,
      String? error,
      bool isLoading,
      IList<Movie> movies,
      IList<Movie> favoriteMovies,
      IList<Movie> watchedMovies});
}

/// @nodoc
class __$$MoviesStateImplCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res, _$MoviesStateImpl>
    implements _$$MoviesStateImplCopyWith<$Res> {
  __$$MoviesStateImplCopyWithImpl(
      _$MoviesStateImpl _value, $Res Function(_$MoviesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? error = freezed,
    Object? isLoading = null,
    Object? movies = null,
    Object? favoriteMovies = null,
    Object? watchedMovies = null,
  }) {
    return _then(_$MoviesStateImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as IList<Movie>,
      favoriteMovies: null == favoriteMovies
          ? _value.favoriteMovies
          : favoriteMovies // ignore: cast_nullable_to_non_nullable
              as IList<Movie>,
      watchedMovies: null == watchedMovies
          ? _value.watchedMovies
          : watchedMovies // ignore: cast_nullable_to_non_nullable
              as IList<Movie>,
    ));
  }
}

/// @nodoc

class _$MoviesStateImpl extends _MoviesState {
  const _$MoviesStateImpl(
      {required this.query,
      required this.error,
      required this.isLoading,
      required this.movies,
      required this.favoriteMovies,
      required this.watchedMovies})
      : super._();

  @override
  final String query;
  @override
  final String? error;
  @override
  final bool isLoading;
  @override
  final IList<Movie> movies;
  @override
  final IList<Movie> favoriteMovies;
  @override
  final IList<Movie> watchedMovies;

  @override
  String toString() {
    return 'MoviesState(query: $query, error: $error, isLoading: $isLoading, movies: $movies, favoriteMovies: $favoriteMovies, watchedMovies: $watchedMovies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesStateImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other.movies, movies) &&
            const DeepCollectionEquality()
                .equals(other.favoriteMovies, favoriteMovies) &&
            const DeepCollectionEquality()
                .equals(other.watchedMovies, watchedMovies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      query,
      error,
      isLoading,
      const DeepCollectionEquality().hash(movies),
      const DeepCollectionEquality().hash(favoriteMovies),
      const DeepCollectionEquality().hash(watchedMovies));

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesStateImplCopyWith<_$MoviesStateImpl> get copyWith =>
      __$$MoviesStateImplCopyWithImpl<_$MoviesStateImpl>(this, _$identity);
}

abstract class _MoviesState extends MoviesState {
  const factory _MoviesState(
      {required final String query,
      required final String? error,
      required final bool isLoading,
      required final IList<Movie> movies,
      required final IList<Movie> favoriteMovies,
      required final IList<Movie> watchedMovies}) = _$MoviesStateImpl;
  const _MoviesState._() : super._();

  @override
  String get query;
  @override
  String? get error;
  @override
  bool get isLoading;
  @override
  IList<Movie> get movies;
  @override
  IList<Movie> get favoriteMovies;
  @override
  IList<Movie> get watchedMovies;

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoviesStateImplCopyWith<_$MoviesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
