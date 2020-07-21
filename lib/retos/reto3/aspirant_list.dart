import 'package:flutter/material.dart';
import 'package:platzi_trips_app/retos/reto3/aspirant.dart';

class AspirantList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 95.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Aspirant('assets/img/user.jpg', 'Alter', 'Experience: 4 years', true),
          Aspirant('assets/img/user2.jpg', 'Alter', 'Experience: 3 years', true),
          Aspirant('assets/img/user3.jpg', 'Alter', 'Experience: 1 years', false),
          Aspirant('assets/img/user4.jpg', 'Alter', 'Experience: 6 years', true),
          Aspirant('assets/img/user5.jpg', 'Alter', 'Experience: 6 years', true),
          Aspirant('assets/img/user5.jpg', 'Alter', 'Experience: 6 years', true),
          Aspirant('assets/img/user5.jpg', 'Alter', 'Experience: 6 years', false),
          Aspirant('assets/img/user5.jpg', 'Alter', 'Experience: 6 years', false),
          Aspirant('assets/img/user5.jpg', 'Alter', 'Experience: 6 years', false),
          Aspirant('assets/img/user5.jpg', 'Alter', 'Experience: 6 years', false),
          Aspirant('assets/img/user5.jpg', 'Alter', 'Experience: 6 years', false),
          Aspirant('assets/img/user5.jpg', 'Alter', 'Experience: 6 years', false),
          Aspirant('assets/img/user5.jpg', 'Alter', 'Experience: 6 years', false),
          Aspirant('assets/img/user5.jpg', 'Alter', 'Experience: 6 years', false),
          Aspirant('assets/img/user5.jpg', 'Alter', 'Experience: 6 years', false),
        ],
      ),
    );
  }
}
