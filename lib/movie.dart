import 'package:flutter/foundation.dart';

@immutable
class Movie {
  final int id;
  final String title;
  final String imageUrl;
  final String backgroundImageUrl;
  final int year;
  final double rating;
  final int runtime;

  const Movie({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.backgroundImageUrl,
    required this.year,
    required this.rating,
    required this.runtime,
  });

  Movie copyWith({
    int? id,
    String? title,
    String? imageUrl,
    String? backgroundImageUrl,
    int? year,
    double? rating,
    int? runtime,
  }) =>
      Movie(
        id: id ?? this.id,
        title: title ?? this.title,
        imageUrl: imageUrl ?? this.imageUrl,
        backgroundImageUrl: backgroundImageUrl ?? this.backgroundImageUrl,
        year: year ?? this.year,
        rating: rating ?? this.rating,
        runtime: runtime ?? this.runtime,
      );

  @override
  String toString() => "Movie(id: $id, title: $title, imageUrl: $imageUrl)";

  @override
  operator ==(o) =>
      o is Movie &&
      o.id == id &&
      o.title == title &&
      o.imageUrl == imageUrl &&
      o.backgroundImageUrl == backgroundImageUrl &&
      o.year == year &&
      o.rating == rating &&
      o.runtime == runtime;
}
