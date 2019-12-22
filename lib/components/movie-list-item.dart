import 'package:flutter/material.dart';
import 'package:letswatch/components/movie-image.dart';
import 'package:letswatch/components/movie-title.dart';
import 'package:letswatch/components/rating-star.dart';
import 'package:letswatch/models/movie-api.dart';
import 'package:letswatch/screens/movie-details.dart';

class MoveListItem extends StatelessWidget {
  final Movies movie;
  MoveListItem({this.movie});

  @override
  Widget build(BuildContext context) {
    if (movie != null) {
      return Container(
        width: 170.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(MovieDetail.routeName, arguments: movie);
            },
            child: Column(
              children: <Widget>[
                MovieImage(image: movie.mediumCoverImage, id: movie.id),
                SizedBox(height: 8),
                RatingStar(size: 15, rating: movie.rating),
                MovieTitle(title: movie.title),
              ],
            ),
          ),
        ),
      );
    } else {
      return Container(
        width: 170.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              MovieImage(),
              SizedBox(height: 8),
              RatingStar(),
              MovieTitle(),
            ],
          ),
        ),
      );
    }
  }
}
