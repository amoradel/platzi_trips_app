import 'package:flutter/material.dart';

class ProfileUserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userImage = Container(
      margin: EdgeInsets.only(left: 15.0),
      child: CircleAvatar(
        radius: 43,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 41,
          backgroundImage: AssetImage('assets/img/user2.jpg'),
        ),
      ),
    );

    final userName = Container(
      child: Text(
        'Anibal Moradel',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato-Regular",
          fontSize: 17.0,
          color: Colors.white,
        ),
      ),
    );

    final email = Container(
      child: Text(
        'me@amoradel.com',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato-Regular",
          fontSize: 17.0,
          color: Colors.white38,
        ),
      ),
    );

    final userInfo = Container(
        height: 40.0,
        margin: EdgeInsets.only(
          left: 25.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            userName,
            email,
          ],
        ));

    return Container(
      margin: EdgeInsets.only(top: 55.0),
      height: 100.0,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              userImage,
              userInfo,
            ],
          )
        ],
      ),
    );
  }
}
