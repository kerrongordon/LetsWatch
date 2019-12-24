import 'package:flutter/material.dart';

class MovieTitle extends StatelessWidget {
  final String title;
  MovieTitle({this.title});

  @override
  Widget build(BuildContext context) {
    if (title != null) {
      return RichText(
        overflow: TextOverflow.ellipsis,
        strutStyle: StrutStyle(fontSize: 16.0),
        textAlign: TextAlign.center,
        text: TextSpan(
            style: TextStyle(
                color: Colors.black54,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0),
            text: title),
      );
    } else {
      return Container(
        height: 15.0,
        width: 100.0,
        color: Colors.grey[300],
      );
    }
  }
}
