import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:movie_flutter/movie.dart';
import 'package:movie_flutter/movies_cubit.dart';
import 'package:movie_flutter/home_page.dart';
import 'package:movie_flutter/movies_repo.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier/state_notifier.dart';

void main() {
  const movie = Movie(
    id: 1,
    title: "The Shawshank Redemption",
    imageUrl:
        "https://yts.mx/assets/images/movies/the_shawshank_redemption_1994/large-cover.jpg",
    backgroundImageUrl:
        "https://yts.mx/assets/images/movies/the_shawshank_redemption_1994/background.jpg",
    year: 1994,
    rating: 9.3,
    runtime: 142,
  );


  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return InheritedProvider(
      create: (context) => MoviesRepo(),
      child: MaterialApp(
        home: BlocProvider(
          create: (context) => MoviesCubit(
            context.read<MoviesRepo>(),
          )..fetchMovies(),
          child: const HomePage(),
        ),
      ),
    );
  }
}

class StreamsPage extends StatefulWidget {
  const StreamsPage({super.key});

  @override
  State<StreamsPage> createState() => _StreamsPageState();
}

class _StreamsPageState extends State<StreamsPage> {
  late final Stream<int> stream;
  List<int> values = [];

  Stream<int> getStream() async* {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }

  @override
  void initState() {
    super.initState();
    stream = getStream();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Streams'),
      ),
      body: StreamBuilder(
        stream: stream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          values.add(snapshot.data as int);

          return Center(
            child: Text('Values: ${values.join(', ')}'),
          );
        },
      ),
    );
  }
}
