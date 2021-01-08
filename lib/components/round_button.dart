import 'package:bmi_calculator_app/constants.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton({this.title, @required this.onPressed});

  final Function onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: kRoundButtonColour,
        elevation: 4,
        textStyle: TextStyle(fontSize: 30),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Text(title),
    );
  }
}
