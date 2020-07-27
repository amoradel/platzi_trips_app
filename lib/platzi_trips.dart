import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:platzi_trips_app/home_trips/home_trips.dart';
import 'package:platzi_trips_app/profile_trips/profile_trips.dart';
import 'package:platzi_trips_app/search_trips.dart';

class PlatziTrips extends StatefulWidget {
  @override
  _PlatziTripsState createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: widgetsChildren[indexTap],
    //   bottomNavigationBar: Theme(
    //     data: Theme.of(context)
    //         .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
    //     child: BottomNavigationBar(
    //       onTap: onTapTapped,
    //       currentIndex: indexTap,
    //       items: [
    //         BottomNavigationBarItem(
    //           icon: Icon(Icons.home),
    //           title: Text("Inicio"),
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Icon(Icons.search),
    //           title: Text("Buscar"),
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Icon(Icons.person),
    //           title: Text("Perfil"),
    //         ),
    //       ],
    //     ),
    //   ),
    // );

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 50.0,
        color: Color(0xFF584CD1),
        backgroundColor: Colors.white,
        onTap: onTapTapped,
        animationDuration: Duration(milliseconds: 500),
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
      body: widgetsChildren[indexTap],
    );
  }
}
