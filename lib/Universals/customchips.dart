import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String text;
  final Color textColors;
  final Color backColor;

  CustomChip(
      {@required this.text,
      @required this.backColor,
      @required this.textColors});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 3, right: 3, bottom: 2),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: backColor,
          // border: Border.all(),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        text,
        style: TextStyle(fontSize: 10, color: textColors),
      ),
    );
  }
}
