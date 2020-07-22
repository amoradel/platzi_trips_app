import 'package:flutter/material.dart';
import 'package:platzi_trips_app/home_trips/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage('assets/img/landscape1.jpg'),
          CardImage('assets/img/landscape2.jpg'),
          CardImage('assets/img/landscape3.jpg'),
          CardImage('assets/img/landscape4.jpg'),
          CardImage('assets/img/landscape5.jpg'),
          CardImage('assets/img/landscape6.jpg')
        ],
      ),
    );
  }
}
