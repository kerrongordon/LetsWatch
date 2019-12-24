import 'package:flutter/material.dart';
import 'package:letswatch/components/movie-image.dart';
import 'package:letswatch/components/movie-title.dart';
import 'package:letswatch/components/rating-star.dart';
import 'package:letswatch/models/movie-api.dart';
import 'package:letswatch/models/movies-details.dart';
import 'package:letswatch/services/movies.dart';
import 'package:transparent_image/transparent_image.dart';

class MovieDetail extends StatefulWidget {
  static const routeName = 'movie-detail';

  @override
  _MovieDetailState createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context).settings.arguments as Movie;

    print(data);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 25, 10, 20),
          color: Colors.green,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                color: Colors.blue,
                child: MovieImage(image: data.mediumCoverImage, id: data.id),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8 - 100,
                color: Colors.red,
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      color: Colors.cyan,
                      child: Text(data.title,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0)),
                    ),
                    Container(
                      color: Colors.deepOrange,
                      child: RatingStar(rating: data.rating, size: 20),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // body: SingleChildScrollView(
      //   child: Container(
      //     padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 20.0),
      //     child: Column(
      //       children: <Widget>[
      //         Row(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           mainAxisSize: MainAxisSize.min,
      //           children: <Widget>[
      //             Padding(
      //               padding: const EdgeInsets.symmetric(horizontal: 5.0),
      //               child: Hero(
      //                 tag: data.id,
      //                 child: Card(
      //                   elevation: 5,
      //                   child: ClipRRect(
      //                     borderRadius: BorderRadius.circular(5),
      //                     child: FadeInImage.memoryNetwork(
      //                       height: 220.0,
      //                       width: 140.0,
      //                       fit: BoxFit.cover,
      //                       image: data.mediumCoverImage,
      //                       placeholder: kTransparentImage,
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //             Container(
      //               width: 200.0,
      //               height: 225.0,
      //               padding: EdgeInsets.all(5),
      //               color: Colors.green,
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 mainAxisAlignment: MainAxisAlignment.start,
      //                 textBaseline: TextBaseline.ideographic,
      //                 children: <Widget>[
      //                   MovieTitle(title: data.title),
      //                   RatingStar(rating: data.rating, size: 20),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      // body: SingleChildScrollView(
      //   child: Container(
      //     padding: EdgeInsets.all(20.0),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: <Widget>[
      //         Center(
      //           child: Hero(
      //             tag: data.id,
      //             child: Card(
      //               elevation: 5.0,
      //               child: ClipRRect(
      //                 borderRadius: BorderRadius.circular(5),
      //                 child: FadeInImage.memoryNetwork(
      //                   height: 450,
      //                   width: 300,
      //                   placeholder: kTransparentImage,
      //                   image: data.mediumCoverImage,
      //                   fit: BoxFit.cover,
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           height: 20.0,
      //         ),
      //         Center(
      //           child: Text(
      //             data.title,
      //             style: TextStyle(
      //                 color: Colors.black54,
      //                 fontSize: 24.0,
      //                 fontWeight: FontWeight.bold,
      //                 letterSpacing: 1.0,
      //                 height: 1.5,
      //                 decoration: TextDecoration.none),
      //             textAlign: TextAlign.center,
      //           ),
      //         ),
      //         SizedBox(
      //           height: 20.0,
      //         ),
      //         RatingStar(rating: data.rating, size: 25,),
      //         Padding(
      //           padding: const EdgeInsets.all(10.0),
      //           child: Center(
      //             child: Text(
      //               data.descriptionFull,
      //               style: TextStyle(
      //                   color: Colors.black54,
      //                   fontSize: 16.0,
      //                   letterSpacing: 1.0,
      //                   height: 1.5),
      //               textAlign: TextAlign.start,
      //             ),
      //           ),
      //         ),
      //         // ReadMoreText(data.descriptionFull,),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
