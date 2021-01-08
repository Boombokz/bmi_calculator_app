import 'package:flutter/material.dart';

class GenderTitle extends StatelessWidget {
  GenderTitle({this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}
