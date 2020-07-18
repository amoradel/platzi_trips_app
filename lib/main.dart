import 'package:flutter/material.dart';
import 'package:platzi_trips_app/description_place.dart';
import 'package:platzi_trips_app/header_appbar.dart';
import 'package:platzi_trips_app/review_list.dart';

void main() => runApp(MyApp());

String name = 'La Ceiba';
double rating = 3.5;
String description =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut fermentum ligula eget sollicitudin placerat. Nullam pharetra, dolor eu scelerisque tristique, magna est ornare metus, in viverra velit urna nec ipsum. In hac habitasse platea dictumst. Donec eget lacinia magna.';
String title = 'Popular';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: Scaffold(
          // appBar: AppBar(
          //   leading: IconButton(
          //     icon: Icon(
          //       Icons.arrow_back,
          //       color: Colors.white,
          //     ),
          //     onPressed: () {},
          //   ),
          //   title: Text('Alter'),
          // ),
          // body: ,
          // body: ReviewList(),
          body: Stack(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  DescriptionPlace(name, rating, description),
                  ReviewList()
                ],
              ),
              HeaderAppbar()
            ],
          ),
        ));
  }
}
