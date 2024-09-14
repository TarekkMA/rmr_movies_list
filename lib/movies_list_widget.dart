import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/home_page.dart';
import 'package:movie_flutter/movie.dart';
import 'package:movie_flutter/movies_cubit.dart';

class MoviesListWidget extends StatelessWidget {
  final IList<Movie> movies;

  const MoviesListWidget({
    super.key,
    required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    if (movies.isEmpty) {
      return const Center(
        child: Text('No movies found'),
      );
    }
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return MovieWidget(movie: movie);
      },
    );
  }
}
