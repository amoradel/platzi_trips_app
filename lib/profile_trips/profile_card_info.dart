import 'package:flutter/material.dart';
import 'package:platzi_trips_app/views/floating_action_button_green.dart';

class ProfileCardInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = Container(
      margin: EdgeInsets.only(left: 18.0, top: 15.0),
      child: Text(
        'Knuckles Mountains Range',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 19.0,
          fontFamily: "Lato-Regular",
        ),
      ),
    );

    final description = Container(
      margin: EdgeInsets.only(left: 18.0, top: 5.0),
      child: Text(
        'Hiking, Water fall hunting, Natural bath, Scenery & Photography',
        style: TextStyle(
          fontSize: 14.0,
          fontFamily: 'Lato-Regular',
          color: Colors.grey,
        ),
      ),
    );

    final steps = Container(
      margin: EdgeInsets.only(left: 18.0, top: 15.0),
      child: Text(
        'Steps 123,123,123',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
          fontFamily: 'Lato-Regular',
          color: Colors.orange,
        ),
      ),
    );

    final cont = Container(
        // margin: EdgeInsets.only(top: 0.0, right: 49.0),
        height: 115.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(18),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            title,
            description,
            steps,
          ],
        ));

    return Stack(
      alignment: Alignment(0.85, 1.3),
      children: <Widget>[
        cont,
        FloatingActionButtonGreen(),
      ],
    );
  }
}
