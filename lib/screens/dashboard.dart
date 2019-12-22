import 'package:flutter/material.dart';
import 'package:letswatch/components/movies/featured-movies.dart';
import 'package:letswatch/components/movies/latest-movies.dart';
import 'package:letswatch/components/movies/popular-movies.dart';
import 'package:letswatch/components/sections-title.dart';
import 'package:letswatch/screens/movies/featured-movies-all.dart';
import 'package:letswatch/screens/movies/latest-movies-all.dart';
import 'package:letswatch/screens/movies/popular-movies-all.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void goTOLatestMoviesAll() {
      Navigator.of(context).pushNamed(LatestMoviesAll.routeName);
    }

    void goToPopularMoviesAll() {
      Navigator.of(context).pushNamed(PopularMoviesAll.routeName);
    }

    void goToFeaturedMoviesAll() {
      Navigator.of(context).pushNamed(FeaturedMoviesAll.routeName);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Lets Watch'),
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SectionTitle(title: 'Latest', goToPage: goTOLatestMoviesAll,),
            LatestMovies(),            
            SectionTitle(title: 'Featured', goToPage: goToFeaturedMoviesAll),
            FeaturedMovies(),
            SectionTitle(title: 'Popular', goToPage: goToPopularMoviesAll),
            PopularMovies(),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
          ],
        ),
      ),
    );
  }
}


