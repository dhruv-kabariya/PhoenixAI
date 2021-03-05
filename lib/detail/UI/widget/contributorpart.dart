import 'package:ai/Universals/chipsShow.dart';
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
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.only(left: 3),
        decoration: BoxDecoration(
            // color: Colors.grey[50],
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Contributors(),
            Divider(),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Tags",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Tags(tags: tags),
                ],
              ),
            ),
            Divider(),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Text(
                "Licence BSD-13",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
