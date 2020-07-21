import 'package:ai/Universals/customchips.dart';
import 'package:ai/detail/UI/widget/contributor.dart';
import 'package:ai/models/otheruser.dart';
import 'package:flutter/material.dart';

class CotriButorPart extends StatelessWidget {
  final List<String> tags;
  final List<OtherUser> contrib_list;

  const CotriButorPart({
    @required this.tags,
    @required this.contrib_list,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _chips(List<String> tags) {
      return tags.map((e) {
        return CustomChip(
          text: e,
          backColor: Colors.deepPurple[100],
          textColors: Colors.deepPurple[800],
        );
      }).toList();
    }

    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Contributors(),
            Container(
              margin: EdgeInsets.only(top: 10, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Tags",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Wrap(children: _chips(tags)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Licence BSD-13",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
