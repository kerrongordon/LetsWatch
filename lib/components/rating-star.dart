import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class RatingStar extends StatelessWidget {
  final double rating;
  final double size;
  RatingStar({this.rating, this.size});

  @override
  Widget build(BuildContext context) {
    if (rating != null) {
      return RatingBar.readOnly(
        size: size,
        maxRating: 5,
        isHalfAllowed: true,
        filledIcon: Icons.star,
        initialRating: rating / 2,
        emptyIcon: Icons.star_border,
        halfFilledIcon: Icons.star_half,
        filledColor: Colors.yellow[900],
        halfFilledColor: Colors.yellow[800],
      );
    } else {
      return Container(
        height: 8.0,
        width: 30.0,
        color: Colors.grey[300],
      );
    }
  }
}
