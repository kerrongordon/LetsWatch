import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class MovieImage extends StatelessWidget {
  final String image;
  final int id;
  MovieImage({this.id, this.image});

  @override
  Widget build(BuildContext context) {
    if (image != null) {
      return Hero(
        tag: id,
        child: Card(
          elevation: 5.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: FadeInImage.memoryNetwork(
              height: 220.0,
              width: 140.0,
              fit: BoxFit.cover,
              image: image,
              placeholder: kTransparentImage,
            ),
          ),
        ),
      );
    } else {
      return Card(
        elevation: 0.0,
        child: Container(
          width: 140.0,
          height: 220.0,
          color: Colors.grey[300],
        ),
      );
    }
  }
}
