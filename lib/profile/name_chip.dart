import 'package:flutter/material.dart';

class NamedChip extends StatelessWidget {
  const NamedChip({
    Key key,
    @required this.kFontBody,
    @required this.text,
    @required this.color,
  }) : super(key: key);

  final String kFontBody;
  final Text text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: text,
      labelStyle: TextStyle(
        color: Color(0xff121212),
        fontFamily: kFontBody,
        fontSize: 15,
      ),
      elevation: 10,
      backgroundColor: color,
    );
  }
}
