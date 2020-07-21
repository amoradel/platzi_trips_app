import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path()
      ..lineTo(0, size.height * .5)
      ..lineTo(size.width * .25, size.height * .5)
      ..quadraticBezierTo(
          size.width / 2, size.height * .65, size.width * .75, size.height * .5)
      ..lineTo(size.width, size.height * .5)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
