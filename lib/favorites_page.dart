import 'package:flutter/material.dart';
import 'package:movie_flutter/movies_controller.dart';
import 'package:movie_flutter/movies_list_page.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final movies = context.watch<MoviesController>().favorites;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return MovieWidget(movie: movie);
        },
      ),
    );
  }
}
