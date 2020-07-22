import 'package:flutter/material.dart';
import 'package:platzi_trips_app/home_trips/card_image_list.dart';
import 'package:platzi_trips_app/views/gradient_back.dart';

class HeaderAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack("Popular", 250.0, [-0.9, -0.6]),
        CardImageList()
      ],
    );
  }
}
