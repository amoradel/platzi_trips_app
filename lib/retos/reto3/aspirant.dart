import 'package:flutter/material.dart';

class Aspirant extends StatelessWidget {
  String pathImage;
  String name;
  String experience;
  bool status;

  Aspirant(this.pathImage, this.name, this.experience, this.status);

  Widget buttonStatus(bool stats) {
    var icontheme;
    if (stats) {
      icontheme = Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            // color: Colors.cyan,
            gradient: LinearGradient(
                colors: [Color(0xFFB2FEFA), Color(0xFF0ED2F7)],
                begin: FractionalOffset(0.0, 0.9),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.8],
                tileMode: TileMode.clamp),
            boxShadow: [
              BoxShadow(
                color: Colors.cyan,
                blurRadius: 10.0, // has the effect of softening the shadow
                spreadRadius: 0.1, // has the effect of extending the shadow
                offset: Offset(
                  0.0, // horizontal, move right 10
                  0.0, // vertical, move down 10
                ),
              )
            ]),
        child: Center(
            child: Icon(Icons.check, color: Color(0xFFFFFFFF), size: 24)),
      );
    } else {
      icontheme = Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            // color: Colors.cyan,
            gradient: LinearGradient(
                colors: [Color(0xFFFF416C), Color(0xFFFF4B2B)],
                begin: FractionalOffset(0.0, 0.9),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.8],
                tileMode: TileMode.clamp),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                blurRadius: 10.0, // has the effect of softening the shadow
                spreadRadius: 0.1, // has the effect of extending the shadow
                offset: Offset(
                  0.0, // horizontal, move right 10
                  0.0, // vertical, move down 10
                ),
              )
            ]),
        child: Center(
            child: Icon(Icons.close, color: Color(0xFFFFFFFF), size: 24)),
      );
    }

    return icontheme;
  }

  @override
  Widget build(BuildContext context) {
    final userName = Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Text(
          name,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato-Regular",
              fontSize: 16.0,
              fontWeight: FontWeight.bold),
        ));

    final userExperience = Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Text(
          experience,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato-Regular",
              fontSize: 16.0,
              color: Colors.grey,
              fontWeight: FontWeight.w400),
        ));

    final photo = Container(
      margin: EdgeInsets.only(top: 15.0, left: 20.0),
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    final buttonEmail = Container(
        margin: EdgeInsets.only(top: 30.0, left: 80.0, right: 20.0),
        child: InkWell(
            onTap: () {
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text("Enviando Email")));
            },
            child: buttonStatus(status)));

    // Container(
    //   margin: EdgeInsets.only(right: 3.0),
    //   padding: EdgeInsets.only(bottom: 2.0),
    //   decoration: BoxDecoration(shape: BoxShape.circle),
    //   child: Icon(
    //     Icons.email,
    //     color: Color(0xFFf2C611),
    //     size: 24,
    //   ),
    // );

    final aspirant = Container(
        margin: EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[userName, userExperience],
        ));

    final cardAspirant = Container(
      decoration: BoxDecoration(),
      child: Row(children: <Widget>[photo, aspirant, buttonEmail]),
    );

    return cardAspirant;

    // return Row(children: <Widget>[photo, aspirant, buttonEmail]);
  }
}
