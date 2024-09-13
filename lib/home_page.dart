import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/movie_details_page.dart';
import 'package:movie_flutter/movies_controller.dart';
import 'package:movie_flutter/movies_list_widget.dart';
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
    final state = context.watch<MoviesController>().value;

    final Widget body;
    if (state.isLoading) {
      body = const Center(
        child: CircularProgressIndicator(),
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
                  context.read<MoviesController>().changeQuery(value);
                },
              ),
              Expanded(
                child: MoviesListWidget(
                    movies: state.hasQuery
                        ? state.filteredMovies
                        : state.movies),
              ),
            ],
          ),
          MoviesListWidget(movies: state.favorites),
          MoviesListWidget(movies: state.watched),
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
          pageController.animateToPage(
            value,
            duration: const Duration(milliseconds: 300),
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
            IconButton(
              onPressed: () {
                context.read<MoviesController>().toggleWatched(movie.id);
              },
              icon: Icon(
                movie.isWatched ? Icons.visibility : Icons.visibility_off,
                color: movie.isWatched ? Colors.green : null,
              ),
            ),
            IconButton(
              onPressed: () {
                context.read<MoviesController>().toggleFavorite(movie.id);
              },
              icon: Icon(
                movie.isFavorite ? Icons.favorite : Icons.favorite_border,
                color: movie.isFavorite ? Colors.red : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
