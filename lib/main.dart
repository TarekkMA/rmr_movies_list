import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:movie_flutter/movies_controller.dart';
import 'package:movie_flutter/home_page.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier/state_notifier.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<MoviesController, MoviesState>(
      create: (context) => MoviesController()..fetchMovies(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
