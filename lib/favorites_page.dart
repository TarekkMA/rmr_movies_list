import 'package:flutter/material.dart';
import 'package:movie_flutter/movies_controller.dart';
import 'package:movie_flutter/movies_list_widget.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: MoviesListWidget(
        movies: context.watch<MoviesController>().favorites,
      ),
    );
  }
}
