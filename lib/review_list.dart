import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';

String pathImage = "assets/img/user.jpg";
String name = "Alter M.";
String details = "1 review 5 photos";
String comment = "There is an amazing place in Sri Lanka";
double rating = 4.5;

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Review(pathImage, name, details, comment, rating),
          Review(pathImage, name, details, comment, rating),
          Review(pathImage, name, details, comment, rating),
          Review(pathImage, name, details, comment, rating),
          Review(pathImage, name, details, comment, rating)
        ],
      ),
    );
  }
}
