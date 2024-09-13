import 'package:flutter/material.dart';
import 'package:movie_flutter/movies_controller.dart';
import 'package:movie_flutter/home_page.dart';
import 'package:movie_flutter/movies_list_widget.dart';
import 'package:provider/provider.dart';

class WatchedPage extends StatelessWidget {
  const WatchedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Watched'),
      ),
      body: MoviesListWidget(
        movies: context.watch<MoviesController>().watched,
      ),
    );
  }
}
