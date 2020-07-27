import 'package:flutter/material.dart';
import 'package:platzi_trips_app/profile_trips/profile_card_info.dart';

class ProfileCardImage extends StatelessWidget {
  final String pathImage;

  ProfileCardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 200.0,
      width: 370.0,
      margin: EdgeInsets.only(left: 15.0, right: 15),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 0.7),
          )
        ],
      ),
    );

    return Container(
      margin: EdgeInsets.only(bottom: 100.0),
      child: Stack(
        alignment: Alignment(0.05, 2.5),
        children: <Widget>[
          card,
          ProfileCardInfo(),
        ],
      ),
    );
  }
}
