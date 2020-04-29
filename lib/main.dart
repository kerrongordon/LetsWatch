import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:letswatch/screens/dashboard.dart';
import 'package:letswatch/screens/movie-details.dart';
import 'package:letswatch/screens/movies/featured-movies-all.dart';
import 'package:letswatch/screens/movies/latest-movies-all.dart';
import 'package:letswatch/screens/movies/popular-movies-all.dart';

void main() => runApp(Home());

// Future main() async {
//   await DotEnv().load('.env');
//   runApp(Home());
// }

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lets Watch',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.indigo[100],
        textTheme: TextTheme(
          body1: TextStyle(
            color: Colors.deepPurple[400],
          ),
        ),
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: Colors.transparent,
          iconTheme: IconThemeData(
            color: Colors.deepPurple[400],
          ),
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.black54,
              fontSize: 24.0,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      home: DashBoard(),
      routes: {
        LatestMoviesAll.routeName: (BuildContext context) => LatestMoviesAll(),
        PopularMoviesAll.routeName: (BuildContext context) => PopularMoviesAll(),
        FeaturedMoviesAll.routeName: (BuildContext context) => FeaturedMoviesAll(),
        MovieDetail.routeName: (BuildContext context) => MovieDetail(),
      },
    );
  }
}