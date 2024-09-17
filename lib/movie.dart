import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    required String title,
    @JsonKey(name: "large_cover_image") required String imageUrl,
    @JsonKey(name: "background_image") required String backgroundImageUrl,
    required int year,
    required double rating,
    required int runtime,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  static List<Movie> fromJsonList(Iterable<dynamic> jsonList) =>
      jsonList.map((json) => Movie.fromJson(json)).toList();
}
