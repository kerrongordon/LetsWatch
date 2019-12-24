import 'package:letswatch/models/movie-api.dart';
import 'package:letswatch/models/movies-details.dart';
import 'package:letswatch/services/api.dart';

class MoviesService {

  static final ApiService _api = ApiService();

  static Future<List<Movies>> listOfAllMovies(String options) async {
    MoviesApi result = await _api.apiMovieListWithOptions(options);
    List<Movies> movies = result.data.movies;
    return movies;
  }

  static Future<Movie> movieDetailsData(String options) async {
    MovieDetails result = await _api.apiMovieDetailsWithOptions(options);
    Movie movie = result.data.movie;
    return movie;
  }

}