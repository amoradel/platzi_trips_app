import 'package:flutter/material.dart';
import 'package:platzi_trips_app/profile_trips/profile_card_image.dart';

class ProfileCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 260.0),
      child: ListView(
        // padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ProfileCardImage('assets/img/landscape1.jpg'),
          ProfileCardImage('assets/img/landscape2.jpg'),
          ProfileCardImage('assets/img/landscape3.jpg'),
          ProfileCardImage('assets/img/landscape4.jpg'),
          ProfileCardImage('assets/img/landscape5.jpg'),
          ProfileCardImage('assets/img/landscape6.jpg')
        ],
      ),
    );
  }
}
