import 'package:flutter/material.dart';

class Kaisa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final kaisa = Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Image.network(
            'https://fsa.zobj.net/crop.php?r=2F1CPClkh-097NkVdjoYKOVXohghA1Pp7Salcu7T1anUSaNlNECH9I0FWEBGuo2xYGgdKtq_G6kp9BPkHrxBKtZh1_500bYrNVKhTd77Ud00gxg8sgkGHKGhLogMXBIQ2OhP4tTnznrpFPOF',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Kaisa \u{1F493}',
            style: TextStyle(color: Colors.black, fontSize: 32.0),
          ),
          color: Colors.white.withOpacity(0.5),
          margin: EdgeInsets.only(top: 350.0, bottom: 250.0),
        )
      ],
    );

    return kaisa;
  }
}
