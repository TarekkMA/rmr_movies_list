import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_flutter/movie.dart';
import 'package:movie_flutter/movies_cubit.dart';
import 'package:movie_flutter/movies_details_cubit.dart';
import 'package:movie_flutter/movies_repo.dart';
import 'package:provider/provider.dart';

class MovieDetailsPage extends StatelessWidget {
  final int movieId;
  const MovieDetailsPage({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MoviesDetailsBloc(
        movieId,
        context.read<MoviesRepo>(),
      ),
      child: BlocBuilder<MoviesDetailsBloc, MoviesDetailsState>(
        builder: (context, state) {
          final Widget body;
          switch (state) {
            case MoviesDetailsLoading():
              body = const Center(child: CircularProgressIndicator());
            case MoviesDetailsError():
              body = const Center(child: Icon(Icons.error, color: Colors.red));
            case MoviesDetailsLoaded():
              body = _MovieDetailsPageContent(moviesDetailsState: state);
          }

          return Scaffold(
            appBar: AppBar(
              title: const Text('Movie Details'),
              backgroundColor: Colors.transparent,
              iconTheme: const IconThemeData(color: Colors.white),
              titleTextStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            extendBodyBehindAppBar: true,
            body: body,
          );
        },
      ),
    );
  }
}

class _MovieDetailsPageContent extends StatelessWidget {
  final MoviesDetailsLoaded moviesDetailsState;
  const _MovieDetailsPageContent({
    super.key,
    required this.moviesDetailsState,
  });

  Movie get movie => moviesDetailsState.movie;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CachedNetworkImage(
          imageUrl: movie.backgroundImageUrl,
          fit: BoxFit.cover,
        ),
        ListView(
          padding: MediaQuery.of(context).padding +
              const EdgeInsets.symmetric(horizontal: 16),
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.yellow, width: 5),
                    color: Colors.red,
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: CachedNetworkImage(
                    imageUrl: movie.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Year: ${movie.year}',
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Rating: ${movie.rating}',
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Runtime: ${movie.runtime} minutes',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.read<MoviesDetailsBloc>().add(
                          MoviesDetailsEvent.toggleWatched(movie.id),
                        );
                  },
                  icon: Icon(
                    moviesDetailsState.isWatched
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: moviesDetailsState.isWatched ? Colors.green : null,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    context.read<MoviesDetailsBloc>().add(
                          MoviesDetailsEvent.toggleFavorite(movie.id),
                        );
                  },
                  icon: Icon(
                    moviesDetailsState.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: moviesDetailsState.isFavorite ? Colors.red : null,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
