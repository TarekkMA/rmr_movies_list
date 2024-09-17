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

class _$MoviesStateImpl extends _MoviesState with DiagnosticableTreeMixin {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MoviesState(query: $query, error: $error, isLoading: $isLoading, movies: $movies, favoriteMovies: $favoriteMovies, watchedMovies: $watchedMovies)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MoviesState'))
      ..add(DiagnosticsProperty('query', query))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('movies', movies))
      ..add(DiagnosticsProperty('favoriteMovies', favoriteMovies))
      ..add(DiagnosticsProperty('watchedMovies', watchedMovies));
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

/// @nodoc
mixin _$MoviesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMovies,
    required TResult Function(String newQuery) changeQuery,
    required TResult Function() repoChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchMovies,
    TResult? Function(String newQuery)? changeQuery,
    TResult? Function()? repoChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMovies,
    TResult Function(String newQuery)? changeQuery,
    TResult Function()? repoChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMovies value) fetchMovies,
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_RepoChanged value) repoChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMovies value)? fetchMovies,
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_RepoChanged value)? repoChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMovies value)? fetchMovies,
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_RepoChanged value)? repoChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesEventCopyWith<$Res> {
  factory $MoviesEventCopyWith(
          MoviesEvent value, $Res Function(MoviesEvent) then) =
      _$MoviesEventCopyWithImpl<$Res, MoviesEvent>;
}

/// @nodoc
class _$MoviesEventCopyWithImpl<$Res, $Val extends MoviesEvent>
    implements $MoviesEventCopyWith<$Res> {
  _$MoviesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoviesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchMoviesImplCopyWith<$Res> {
  factory _$$FetchMoviesImplCopyWith(
          _$FetchMoviesImpl value, $Res Function(_$FetchMoviesImpl) then) =
      __$$FetchMoviesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchMoviesImplCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res, _$FetchMoviesImpl>
    implements _$$FetchMoviesImplCopyWith<$Res> {
  __$$FetchMoviesImplCopyWithImpl(
      _$FetchMoviesImpl _value, $Res Function(_$FetchMoviesImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoviesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchMoviesImpl with DiagnosticableTreeMixin implements _FetchMovies {
  const _$FetchMoviesImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MoviesEvent.fetchMovies()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MoviesEvent.fetchMovies'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchMoviesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMovies,
    required TResult Function(String newQuery) changeQuery,
    required TResult Function() repoChanged,
  }) {
    return fetchMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchMovies,
    TResult? Function(String newQuery)? changeQuery,
    TResult? Function()? repoChanged,
  }) {
    return fetchMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMovies,
    TResult Function(String newQuery)? changeQuery,
    TResult Function()? repoChanged,
    required TResult orElse(),
  }) {
    if (fetchMovies != null) {
      return fetchMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMovies value) fetchMovies,
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_RepoChanged value) repoChanged,
  }) {
    return fetchMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMovies value)? fetchMovies,
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_RepoChanged value)? repoChanged,
  }) {
    return fetchMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMovies value)? fetchMovies,
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_RepoChanged value)? repoChanged,
    required TResult orElse(),
  }) {
    if (fetchMovies != null) {
      return fetchMovies(this);
    }
    return orElse();
  }
}

abstract class _FetchMovies implements MoviesEvent {
  const factory _FetchMovies() = _$FetchMoviesImpl;
}

/// @nodoc
abstract class _$$ChangeQueryImplCopyWith<$Res> {
  factory _$$ChangeQueryImplCopyWith(
          _$ChangeQueryImpl value, $Res Function(_$ChangeQueryImpl) then) =
      __$$ChangeQueryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newQuery});
}

/// @nodoc
class __$$ChangeQueryImplCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res, _$ChangeQueryImpl>
    implements _$$ChangeQueryImplCopyWith<$Res> {
  __$$ChangeQueryImplCopyWithImpl(
      _$ChangeQueryImpl _value, $Res Function(_$ChangeQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newQuery = null,
  }) {
    return _then(_$ChangeQueryImpl(
      null == newQuery
          ? _value.newQuery
          : newQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeQueryImpl with DiagnosticableTreeMixin implements _ChangeQuery {
  const _$ChangeQueryImpl(this.newQuery);

  @override
  final String newQuery;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MoviesEvent.changeQuery(newQuery: $newQuery)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MoviesEvent.changeQuery'))
      ..add(DiagnosticsProperty('newQuery', newQuery));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeQueryImpl &&
            (identical(other.newQuery, newQuery) ||
                other.newQuery == newQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newQuery);

  /// Create a copy of MoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeQueryImplCopyWith<_$ChangeQueryImpl> get copyWith =>
      __$$ChangeQueryImplCopyWithImpl<_$ChangeQueryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMovies,
    required TResult Function(String newQuery) changeQuery,
    required TResult Function() repoChanged,
  }) {
    return changeQuery(newQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchMovies,
    TResult? Function(String newQuery)? changeQuery,
    TResult? Function()? repoChanged,
  }) {
    return changeQuery?.call(newQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMovies,
    TResult Function(String newQuery)? changeQuery,
    TResult Function()? repoChanged,
    required TResult orElse(),
  }) {
    if (changeQuery != null) {
      return changeQuery(newQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMovies value) fetchMovies,
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_RepoChanged value) repoChanged,
  }) {
    return changeQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMovies value)? fetchMovies,
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_RepoChanged value)? repoChanged,
  }) {
    return changeQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMovies value)? fetchMovies,
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_RepoChanged value)? repoChanged,
    required TResult orElse(),
  }) {
    if (changeQuery != null) {
      return changeQuery(this);
    }
    return orElse();
  }
}

abstract class _ChangeQuery implements MoviesEvent {
  const factory _ChangeQuery(final String newQuery) = _$ChangeQueryImpl;

  String get newQuery;

  /// Create a copy of MoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeQueryImplCopyWith<_$ChangeQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RepoChangedImplCopyWith<$Res> {
  factory _$$RepoChangedImplCopyWith(
          _$RepoChangedImpl value, $Res Function(_$RepoChangedImpl) then) =
      __$$RepoChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RepoChangedImplCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res, _$RepoChangedImpl>
    implements _$$RepoChangedImplCopyWith<$Res> {
  __$$RepoChangedImplCopyWithImpl(
      _$RepoChangedImpl _value, $Res Function(_$RepoChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoviesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RepoChangedImpl with DiagnosticableTreeMixin implements _RepoChanged {
  const _$RepoChangedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MoviesEvent.repoChanged()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MoviesEvent.repoChanged'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RepoChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMovies,
    required TResult Function(String newQuery) changeQuery,
    required TResult Function() repoChanged,
  }) {
    return repoChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchMovies,
    TResult? Function(String newQuery)? changeQuery,
    TResult? Function()? repoChanged,
  }) {
    return repoChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMovies,
    TResult Function(String newQuery)? changeQuery,
    TResult Function()? repoChanged,
    required TResult orElse(),
  }) {
    if (repoChanged != null) {
      return repoChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMovies value) fetchMovies,
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_RepoChanged value) repoChanged,
  }) {
    return repoChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMovies value)? fetchMovies,
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_RepoChanged value)? repoChanged,
  }) {
    return repoChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMovies value)? fetchMovies,
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_RepoChanged value)? repoChanged,
    required TResult orElse(),
  }) {
    if (repoChanged != null) {
      return repoChanged(this);
    }
    return orElse();
  }
}

abstract class _RepoChanged implements MoviesEvent {
  const factory _RepoChanged() = _$RepoChangedImpl;
}
