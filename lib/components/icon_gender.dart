import 'package:flutter/material.dart';

class IconGender extends StatelessWidget {
  IconGender({this.icon, this.color});

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 80,
      color: color,
    );
  }
}
