import 'package:flutter/material.dart';

class ProfileRowButtons extends StatelessWidget {
  double sizeIcons = 28;
  double marginLeftIcons = 28.5;

  @override
  Widget build(BuildContext context) {
    final bookmarkIcon = Container(
      margin: EdgeInsets.only(left: marginLeftIcons),
      child: InkWell(
        onTap: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Agregar"),
            ),
          );
        },
        child: Container(
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.bookmark_border,
              color: Colors.indigo,
              size: sizeIcons,
            ),
          ),
        ),
      ),
    );

    final shareIcon = Container(
      margin: EdgeInsets.only(left: marginLeftIcons),
      child: InkWell(
        onTap: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Agregar"),
            ),
          );
        },
        child: Container(
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white54,
            child: Icon(
              Icons.cast,
              color: Colors.indigo,
              size: sizeIcons,
            ),
          ),
        ),
      ),
    );

    final addIcon = Container(
      margin: EdgeInsets.only(left: marginLeftIcons),
      child: InkWell(
        onTap: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Agregar"),
            ),
          );
        },
        child: Container(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.add,
              color: Colors.indigo,
              size: sizeIcons + 10,
            ),
          ),
        ),
      ),
    );

    final emailIcon = Container(
      margin: EdgeInsets.only(left: marginLeftIcons),
      child: InkWell(
        onTap: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Agregar"),
            ),
          );
        },
        child: Container(
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white54,
            child: Icon(
              Icons.email,
              color: Colors.indigo,
              size: sizeIcons,
            ),
          ),
        ),
      ),
    );

    final userIcon = Container(
      margin: EdgeInsets.only(left: marginLeftIcons),
      child: InkWell(
        onTap: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Agregar"),
            ),
          );
        },
        child: Container(
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white54,
            child: Icon(
              Icons.person,
              color: Colors.indigo,
              size: sizeIcons,
            ),
          ),
        ),
      ),
    );

    return Container(
      margin: EdgeInsets.only(top: 170),
      height: 60,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              bookmarkIcon,
              shareIcon,
              addIcon,
              emailIcon,
              userIcon,
            ],
          )
        ],
      ),
    );
  }
}
