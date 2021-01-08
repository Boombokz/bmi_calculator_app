import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.color, this.cardChild, this.onPress});

  final Color color;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(15),
        child: cardChild,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey[300].withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 2))
          ],
          color: color,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.grey[400].withOpacity(0.5),
            width: 3,
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}
