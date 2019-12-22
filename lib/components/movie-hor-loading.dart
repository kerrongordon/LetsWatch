import 'package:flutter/material.dart';
import 'package:letswatch/components/movie-list-item.dart';

class MovieHorLoading extends StatelessWidget {
  const MovieHorLoading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          MoveListItem(),
          MoveListItem(),
          MoveListItem(),
        ],
      ),
    );
  }
}
