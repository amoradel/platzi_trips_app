import 'package:flutter/material.dart';
import 'package:platzi_trips_app/rating.dart';

class Review extends StatelessWidget {
  String pathImage;
  String name;
  String details;
  String comment;
  double rating;

  Review(this.pathImage, this.name, this.details, this.comment, this.rating);

  @override
  Widget build(BuildContext context) {
    final userName = Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Text(
          name,
          textAlign: TextAlign.left,
          style: TextStyle(fontFamily: "Lato-Regular", fontSize: 17.0),
        ));

    final userInfo = Row(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(left: 20.0),
            child: Text(
              details,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: "Lato-Regular",
                  fontSize: 13.0,
                  color: Color(0xFFa3a5a7)),
            )),
        new Rating(rating, 16)
      ],
    );

    final userComment = Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Text(
          name,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato-Regular", fontWeight: FontWeight.w900),
        ));

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20, left: 20),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
