import 'package:flutter/material.dart';
import 'package:platzi_trips_app/profile_trips/profile_card_image.dart';
import 'package:platzi_trips_app/profile_trips/profile_card_list.dart';
import 'package:platzi_trips_app/profile_trips/profile_header_appbar.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProfileHeaderAppbar(),
        ProfileCardList()
        // ProfileCardImage('assets/img/landscape1.jpg'),
      ],
    );
  }
}
