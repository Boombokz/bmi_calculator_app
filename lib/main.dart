import 'package:bmi_calculator_app/constants.dart';
import 'package:bmi_calculator_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: kActiveCardColour),
      title: 'Awesome Calco',
      home: HomePage(),
    );
  }
}
