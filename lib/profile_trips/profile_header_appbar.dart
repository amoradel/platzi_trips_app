import 'package:flutter/material.dart';
import 'package:platzi_trips_app/profile_trips/profile_row_buttons.dart';
import 'package:platzi_trips_app/profile_trips/profile_user_info.dart';
import 'package:platzi_trips_app/views/gradient_back.dart';

class ProfileHeaderAppbar extends StatelessWidget {
  final buttonSettings = Container();

  @override
  Widget build(BuildContext context) {
    final settingsIcon = InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("Configuración"),
          ),
        );
      },
      child: Container(
        child: Icon(
          Icons.settings,
          color: Colors.white60,
          size: 18,
        ),
      ),
    );

    return Stack(
      alignment: Alignment(0.85, -0.71),
      children: <Widget>[
        GradientBack('Profile', 400.0, [-0.905, -0.765]),
        settingsIcon,
        ProfileUserInfo(),
        ProfileRowButtons()
      ],
    );
  }
}
