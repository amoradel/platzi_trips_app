import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title;
  double heightGradient;
  List aligmentXY = [];

  GradientBack(this.title, this.heightGradient, this.aligmentXY);

  @override
  Widget build(BuildContext context) {
    final textScreen = Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 30.0,
        fontFamily: 'Lato-Regular',
        fontWeight: FontWeight.bold,
      ),
    );

    return Container(
      alignment: Alignment(aligmentXY[0], aligmentXY[1]),
      // alignment: Alignment(-0.9, -0.6),
      height: heightGradient,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      child: textScreen,
    );
  }
}
