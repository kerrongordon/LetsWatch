import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  
  final String title;
  final Function goToPage;
  SectionTitle({this.title, this.goToPage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text('View All'),
            onPressed: () {
            goToPage();
            },  
          ),
        ],
      ),
    );
  }
}
