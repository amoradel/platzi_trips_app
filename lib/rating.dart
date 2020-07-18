import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  double numberStars;
  double fontSize;

  Rating(this.numberStars, this.fontSize);

  @override
  Widget build(BuildContext context) {
    Widget star(double withBoder) {
      var starFill = Icons.star;

      if (withBoder == 0.5)
        starFill = Icons.star_half;
      else if (withBoder == 0) starFill = Icons.star_border;

      return new Container(
        margin: EdgeInsets.only(top: 323.0, right: 3.0),
        child: Icon(
          starFill,
          color: Color(0xFFf2C611),
          size: fontSize,
        ),
      );
    }

    Widget showStars(double numberStars) {
      List<Widget> rowStars = [];
      List<Widget> rowStarsHalf = [];
      List<Widget> rowStarsBorder = [];

      int numberInt = numberStars.floor();

      List(numberInt).forEach((i) => rowStars.add(star(1)));

      if ((numberStars - numberInt) == 0.5) {
        rowStarsHalf.add(star(0.5));
        numberInt++;
      }

      List(5 - numberInt).forEach((i) => rowStarsBorder.add(star(0)));

      List<Widget> finalStars = []
        ..addAll(rowStars)
        ..addAll(rowStarsHalf)
        ..addAll(rowStarsBorder);

      return new Row(children: finalStars);
    }

    return showStars(this.numberStars);
  }
}
