import 'package:flutter/material.dart';
import 'package:letswatch/components/rating-star.dart';
import 'package:letswatch/models/movie-api.dart';
import 'package:transparent_image/transparent_image.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({Key key}) : super(key: key);

  static const routeName = 'movie-detail';

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context).settings.arguments as Movies;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Hero(
                  tag: data.id,
                  child: Card(
                    elevation: 5.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: FadeInImage.memoryNetwork(
                        height: 450,
                        width: 300,
                        placeholder: kTransparentImage,
                        image: data.mediumCoverImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  data.title,
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      height: 1.5,
                      decoration: TextDecoration.none),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              RatingStar(rating: data.rating, size: 25,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    data.descriptionFull,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16.0,
                        letterSpacing: 1.0,
                        height: 1.5),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              // ReadMoreText(data.descriptionFull,),
            ],
          ),
        ),
      ),
    );
  }
}
