import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_flutter/movie.dart';
import 'package:movie_flutter/movie_details_page.dart';
import 'package:movie_flutter/movies_cubit.dart';
import 'package:movie_flutter/movies_details_cubit.dart';
import 'package:movie_flutter/movies_list_widget.dart';
import 'package:movie_flutter/movies_repo.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  final pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<MoviesBloc>().state;

    final Widget body;
    if (state.isLoading) {
      body = const Center(
        child: CircularProgressIndicator(),
      );
    } else if (state.hasError) {
      body = Center(
        child: Text(state.error!, style: const TextStyle(color: Colors.red)),
      );
    } else {
      body = PageView(
        controller: pageController,
        children: [
          Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Search',
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (value) {
                  context
                      .read<MoviesBloc>()
                      .add(MoviesEvent.changeQuery(value));
                },
              ),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    context
                        .read<MoviesBloc>()
                        .add(const MoviesEvent.fetchMovies());
                  },
                  child: MoviesListWidget(
                    movies:
                        state.hasQuery ? state.filteredMovies : state.movies,
                  ),
                ),
              ),
            ],
          ),
          MoviesListWidget(movies: state.favoriteMovies),
          MoviesListWidget(movies: state.watchedMovies),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies List'),
      ),
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (state.isLoading || state.hasError) {
            return;
          }
          pageController.animateToPage(
            value,
            duration: const Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        },
        currentIndex: currentPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.visibility),
            label: "Watched",
          ),
        ],
      ),
    );
  }
}

class MovieWidget extends StatelessWidget {
  final Movie movie;
  const MovieWidget({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MovieDetailsPage(movieId: movie.id),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: movie.imageUrl,
              width: 100,
              height: 150,
              errorWidget: (context, error, stackTrace) {
                return Container(
                  width: 100,
                  height: 150,
                  color: Colors.grey,
                  child: const Icon(Icons.error, color: Colors.white),
                );
              },
            ),
            const SizedBox(width: 10),
            Expanded(child: Text(movie.title)),
            BlocProvider(
              create: (context) => MoviesDetailsBloc(
                movie.id,
                context.read<MoviesRepo>(),
              ),
              child: BlocBuilder<MoviesDetailsBloc, MoviesDetailsState>(
                builder: (context, state) {
                  switch (state) {
                    case MoviesDetailsLoading():
                      return const CircularProgressIndicator();
                    case MoviesDetailsError():
                      return const Icon(Icons.error, color: Colors.red);
                    case MoviesDetailsLoaded():
                      return Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              context.read<MoviesDetailsBloc>().add(
                                    MoviesDetailsEvent.toggleWatched(movie.id),
                                  );
                            },
                            icon: Icon(
                              state.isWatched
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: state.isWatched ? Colors.green : null,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              context.read<MoviesDetailsBloc>().add(
                                    MoviesDetailsEvent.toggleFavorite(movie.id),
                                  );
                            },
                            icon: Icon(
                              state.isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: state.isFavorite ? Colors.red : null,
                            ),
                          ),
                        ],
                      );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
