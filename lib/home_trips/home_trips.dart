import 'package:flutter/material.dart';
import 'package:platzi_trips_app/home_trips/description_place.dart';
import 'package:platzi_trips_app/home_trips/header_appbar.dart';
import 'package:platzi_trips_app/home_trips/review_list.dart';

class HomeTrips extends StatelessWidget {
  String name = 'La Ceiba';
  double rating = 3.5;
  String description =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut fermentum ligula eget sollicitudin placerat. Nullam pharetra, dolor eu scelerisque tristique, magna est ornare metus, in viverra velit urna nec ipsum. In hac habitasse platea dictumst. Donec eget lacinia magna.';
  String title = 'Popular';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace(name, rating, description),
            ReviewList()
          ],
        ),
        HeaderAppbar()
      ],
    );
  }
}
