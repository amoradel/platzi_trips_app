import 'package:flutter/material.dart';
import 'package:platzi_trips_app/profile_trips/profile_header_appbar.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProfileHeaderAppbar(),
      ],
    );
  }
}
