// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MoviesDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(Movie movie, bool isFavorite, bool isWatched)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(Movie movie, bool isFavorite, bool isWatched)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Movie movie, bool isFavorite, bool isWatched)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesDetailsLoading value) loading,
    required TResult Function(MoviesDetailsError value) error,
    required TResult Function(MoviesDetailsLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesDetailsLoading value)? loading,
    TResult? Function(MoviesDetailsError value)? error,
    TResult? Function(MoviesDetailsLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesDetailsLoading value)? loading,
    TResult Function(MoviesDetailsError value)? error,
    TResult Function(MoviesDetailsLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesDetailsStateCopyWith<$Res> {
  factory $MoviesDetailsStateCopyWith(
          MoviesDetailsState value, $Res Function(MoviesDetailsState) then) =
      _$MoviesDetailsStateCopyWithImpl<$Res, MoviesDetailsState>;
}

/// @nodoc
class _$MoviesDetailsStateCopyWithImpl<$Res, $Val extends MoviesDetailsState>
    implements $MoviesDetailsStateCopyWith<$Res> {
  _$MoviesDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoviesDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MoviesDetailsLoadingImplCopyWith<$Res> {
  factory _$$MoviesDetailsLoadingImplCopyWith(_$MoviesDetailsLoadingImpl value,
          $Res Function(_$MoviesDetailsLoadingImpl) then) =
      __$$MoviesDetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MoviesDetailsLoadingImplCopyWithImpl<$Res>
    extends _$MoviesDetailsStateCopyWithImpl<$Res, _$MoviesDetailsLoadingImpl>
    implements _$$MoviesDetailsLoadingImplCopyWith<$Res> {
  __$$MoviesDetailsLoadingImplCopyWithImpl(_$MoviesDetailsLoadingImpl _value,
      $Res Function(_$MoviesDetailsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoviesDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MoviesDetailsLoadingImpl implements MoviesDetailsLoading {
  const _$MoviesDetailsLoadingImpl();

  @override
  String toString() {
    return 'MoviesDetailsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesDetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(Movie movie, bool isFavorite, bool isWatched)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(Movie movie, bool isFavorite, bool isWatched)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Movie movie, bool isFavorite, bool isWatched)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesDetailsLoading value) loading,
    required TResult Function(MoviesDetailsError value) error,
    required TResult Function(MoviesDetailsLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesDetailsLoading value)? loading,
    TResult? Function(MoviesDetailsError value)? error,
    TResult? Function(MoviesDetailsLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesDetailsLoading value)? loading,
    TResult Function(MoviesDetailsError value)? error,
    TResult Function(MoviesDetailsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MoviesDetailsLoading implements MoviesDetailsState {
  const factory MoviesDetailsLoading() = _$MoviesDetailsLoadingImpl;
}

/// @nodoc
abstract class _$$MoviesDetailsErrorImplCopyWith<$Res> {
  factory _$$MoviesDetailsErrorImplCopyWith(_$MoviesDetailsErrorImpl value,
          $Res Function(_$MoviesDetailsErrorImpl) then) =
      __$$MoviesDetailsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MoviesDetailsErrorImplCopyWithImpl<$Res>
    extends _$MoviesDetailsStateCopyWithImpl<$Res, _$MoviesDetailsErrorImpl>
    implements _$$MoviesDetailsErrorImplCopyWith<$Res> {
  __$$MoviesDetailsErrorImplCopyWithImpl(_$MoviesDetailsErrorImpl _value,
      $Res Function(_$MoviesDetailsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoviesDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MoviesDetailsErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MoviesDetailsErrorImpl implements MoviesDetailsError {
  const _$MoviesDetailsErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MoviesDetailsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesDetailsErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MoviesDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesDetailsErrorImplCopyWith<_$MoviesDetailsErrorImpl> get copyWith =>
      __$$MoviesDetailsErrorImplCopyWithImpl<_$MoviesDetailsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(Movie movie, bool isFavorite, bool isWatched)
        loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(Movie movie, bool isFavorite, bool isWatched)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Movie movie, bool isFavorite, bool isWatched)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesDetailsLoading value) loading,
    required TResult Function(MoviesDetailsError value) error,
    required TResult Function(MoviesDetailsLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesDetailsLoading value)? loading,
    TResult? Function(MoviesDetailsError value)? error,
    TResult? Function(MoviesDetailsLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesDetailsLoading value)? loading,
    TResult Function(MoviesDetailsError value)? error,
    TResult Function(MoviesDetailsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MoviesDetailsError implements MoviesDetailsState {
  const factory MoviesDetailsError(final String message) =
      _$MoviesDetailsErrorImpl;

  String get message;

  /// Create a copy of MoviesDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoviesDetailsErrorImplCopyWith<_$MoviesDetailsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoviesDetailsLoadedImplCopyWith<$Res> {
  factory _$$MoviesDetailsLoadedImplCopyWith(_$MoviesDetailsLoadedImpl value,
          $Res Function(_$MoviesDetailsLoadedImpl) then) =
      __$$MoviesDetailsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Movie movie, bool isFavorite, bool isWatched});

  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class __$$MoviesDetailsLoadedImplCopyWithImpl<$Res>
    extends _$MoviesDetailsStateCopyWithImpl<$Res, _$MoviesDetailsLoadedImpl>
    implements _$$MoviesDetailsLoadedImplCopyWith<$Res> {
  __$$MoviesDetailsLoadedImplCopyWithImpl(_$MoviesDetailsLoadedImpl _value,
      $Res Function(_$MoviesDetailsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoviesDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
    Object? isFavorite = null,
    Object? isWatched = null,
  }) {
    return _then(_$MoviesDetailsLoadedImpl(
      null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
      null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isWatched
          ? _value.isWatched
          : isWatched // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of MoviesDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res> get movie {
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }
}

/// @nodoc

class _$MoviesDetailsLoadedImpl implements MoviesDetailsLoaded {
  const _$MoviesDetailsLoadedImpl(this.movie, this.isFavorite, this.isWatched);

  @override
  final Movie movie;
  @override
  final bool isFavorite;
  @override
  final bool isWatched;

  @override
  String toString() {
    return 'MoviesDetailsState.loaded(movie: $movie, isFavorite: $isFavorite, isWatched: $isWatched)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesDetailsLoadedImpl &&
            (identical(other.movie, movie) || other.movie == movie) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.isWatched, isWatched) ||
                other.isWatched == isWatched));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie, isFavorite, isWatched);

  /// Create a copy of MoviesDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesDetailsLoadedImplCopyWith<_$MoviesDetailsLoadedImpl> get copyWith =>
      __$$MoviesDetailsLoadedImplCopyWithImpl<_$MoviesDetailsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(Movie movie, bool isFavorite, bool isWatched)
        loaded,
  }) {
    return loaded(movie, isFavorite, isWatched);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(Movie movie, bool isFavorite, bool isWatched)? loaded,
  }) {
    return loaded?.call(movie, isFavorite, isWatched);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Movie movie, bool isFavorite, bool isWatched)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(movie, isFavorite, isWatched);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesDetailsLoading value) loading,
    required TResult Function(MoviesDetailsError value) error,
    required TResult Function(MoviesDetailsLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesDetailsLoading value)? loading,
    TResult? Function(MoviesDetailsError value)? error,
    TResult? Function(MoviesDetailsLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesDetailsLoading value)? loading,
    TResult Function(MoviesDetailsError value)? error,
    TResult Function(MoviesDetailsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MoviesDetailsLoaded implements MoviesDetailsState {
  const factory MoviesDetailsLoaded(
          final Movie movie, final bool isFavorite, final bool isWatched) =
      _$MoviesDetailsLoadedImpl;

  Movie get movie;
  bool get isFavorite;
  bool get isWatched;

  /// Create a copy of MoviesDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoviesDetailsLoadedImplCopyWith<_$MoviesDetailsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
