import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:letswatch/models/movie-api.dart';
import 'package:letswatch/models/movies-details.dart';

class ApiService {

  // final String _apiBaseUrl = DotEnv().env['API_URL'];
  final String _apiBaseUrl = 'https://yts.mx/api/v2/';
  final String _listMovies = 'list_movies.json';
  final String _movieDetails = 'movie_details.json';
  final Map<String, String> headers = {"Content-type": "application/json"};

  Future<MoviesApi> apiMovieListWithOptions(String options) async {
    final Response response = await get('$_apiBaseUrl$_listMovies$options', headers: headers);
    if (response.statusCode == 200) {
      return MoviesApi.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load Api');
    }
  }

  Future<MovieDetails> apiMovieDetailsWithOptions(String options) async {
    final Response response = await get('$_apiBaseUrl$_movieDetails$options', headers: headers);
    if (response.statusCode == 200) {
      return MovieDetails.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load Api');
    }
  }

}