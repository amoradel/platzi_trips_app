import 'package:flutter/material.dart';
import 'package:platzi_trips_app/reto3/my_clipper.dart';

class AspirantHeaderAppbar extends StatelessWidget {
  const AspirantHeaderAppbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightbar = 230.0;

    final imageBack = Container(
      height: heightbar,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
              image: AssetImage('assets/img/students.jpg'))),
    );

    final transparency = Container(
      height: heightbar,
      decoration: BoxDecoration(color: Color.fromRGBO(15, 32, 39, 0.8)),
    );

    final title = Container(
        height: heightbar * .65,
        child: Center(
            child: Text(
          'Aspirantes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontFamily: 'Lato-Regular',
            fontWeight: FontWeight.bold,
          ),
        )));

    final iconMenu = Container(
      height: heightbar * .65,
      padding: EdgeInsets.only(left: 15.0),
      child: Icon(
        Icons.menu,
        color: Color(0xFFFFFFFF),
        size: 24,
      ),
      alignment: Alignment.centerLeft,
    );

    final headerback = Stack(
      children: <Widget>[imageBack, transparency, title, iconMenu],
    );

    return ClipPath(clipper: MyClipper(), child: headerback);
  }
}
