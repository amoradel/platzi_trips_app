import 'package:flutter/material.dart';
import 'package:platzi_trips_app/description_place.dart';
import 'package:platzi_trips_app/review.dart';

void main() => runApp(MyApp());

String pathImage = "asset/img/user.jpg";
String name = "Alter M.";
String details = "1 review 5 photos";
String comment = "There is an amazing place in Sri Lanka";
double rating = 4.5;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.cyan),
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              title: Text('Alter'),
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  new DescriptionPlace('Duwili Ella', 3.5,
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut fermentum ligula eget sollicitudin placerat. Nullam pharetra, dolor eu scelerisque tristique, magna est ornare metus, in viverra velit urna nec ipsum. In hac habitasse platea dictumst. Donec eget lacinia magna.'),
                  new Review(pathImage, name, details, comment, rating),
                ],
              ),
            )));
  }
}
