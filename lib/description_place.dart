import 'package:flutter/material.dart';
import 'package:platzi_trips_app/button_purple.dart';
import 'package:platzi_trips_app/rating.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  String textDescription;
  double rating;

  DescriptionPlace(this.namePlace, this.rating, this.textDescription);

  @override
  Widget build(BuildContext context) {
    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: TextStyle(
                fontFamily: "Lato-Regular",
                fontSize: 30.0,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
        ),
        Rating(rating, 24.0, 323.0)
        // Row(
        //   children: <Widget>[star(1), star(1), star(0.5), star(0), star(0)],
        // ),
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      child: Text(
        textDescription,
        style: TextStyle(fontFamily: "Lato-Regular", fontSize: 16.0
            // ,
            // fontWeight: FontWeight.bold,
            // color: Color(0xFF56575a)
            ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[titleStars, description, ButtonPurple('Navigate')],
    );
  }
}
