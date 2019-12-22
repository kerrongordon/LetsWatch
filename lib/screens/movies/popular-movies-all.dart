import 'package:flutter/material.dart';
import 'package:letswatch/components/movie-list-item.dart';
import 'package:letswatch/models/movie-api.dart';
import 'package:letswatch/services/movies.dart';

class PopularMoviesAll extends StatefulWidget {
  static const routeName = 'popular-movies';

  @override
  _PopularMoviesAllState createState() => _PopularMoviesAllState();
}

class _PopularMoviesAllState extends State<PopularMoviesAll> {
  List<Movies> moviesArr = [];
  int counter = 1;

  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _loadMoviesByDownload();
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 500.0) {
        counter += 1;
        _loadMoviesByDownload();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  Future<List<Movies>> _loadMoviesByDownload() async {
    String options = '?limit=20&sort_by=download_count&page=$counter';
    List<Movies> movies = await MoviesService.listOfAllMovies(options);
    setState(() {
      moviesArr = moviesArr + movies;
    });
    return movies;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popular Movies'),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            onPressed: () {},
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.63,
        crossAxisSpacing: 0.0,
        mainAxisSpacing: 0.5,
        controller: _scrollController,
        children: moviesArr
            .map(
              (movie) => MoveListItem(movie: movie)
            )
            .toList(),
      ),
    );
  }
}
