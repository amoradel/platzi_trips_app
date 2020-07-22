import 'package:flutter/material.dart';
import 'package:platzi_trips_app/home_trips/review.dart';

String details = "1 review 5 photos";
String comment = "There is an amazing place in La Ceiba";

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Review("assets/img/user4.jpg", 'Litoska', details, comment, 4.5),
          Review("assets/img/user2.jpg", 'Alter', details, comment, 3),
          Review("assets/img/user3.jpg", 'Rick', details, comment, 5),
          Review("assets/img/user5.jpg", 'Sam', details, comment, 4),
          Review("assets/img/user.jpg", 'Lin', details, comment, 5)
        ],
      ),
    );
  }
}
