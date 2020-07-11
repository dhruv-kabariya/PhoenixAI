import 'package:flutter/material.dart';

class TagChip extends StatelessWidget {
  final String title;
  const TagChip({
    @required this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()..scale(0.8),
      child: Chip(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.green[200],
        labelStyle: TextStyle(color: Colors.black),
        label: Text(title),
      ),
    );
  }
}
