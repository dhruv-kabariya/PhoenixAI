import 'package:ai/Universals/customchips.dart';
import 'package:flutter/material.dart';

class Tags extends StatelessWidget {
  const Tags({
    @required this.tags,
    Key key,
  }) : super(key: key);

  final List<String> tags;

  List<Widget> _chips(List<String> tags) {
    return tags.map((e) {
      return CustomChip(
        text: e,
        backColor: Colors.deepPurple[100],
        textColors: Colors.deepPurple[800],
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 5, bottom: 5),
        // height: boxHeight * 6,
        child: Wrap(children: _chips(tags)));
  }
}
