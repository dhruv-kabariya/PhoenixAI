import 'package:ai/icons/my_icon_icons.dart';
import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      // constraints: BoxConstraints.expand(height: 50),

      alignment: Alignment.topLeft,
      child: TabBar(
          isScrollable: true,
          indicatorWeight: 2,
          indicatorPadding: EdgeInsets.zero,
          tabs: [
            Container(
              // width: 100,
              padding: EdgeInsets.all(4),
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.import_contacts,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("About")
                ],
              ),
            ),
            Container(
              // width: 200,
              padding: EdgeInsets.all(4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    MyIcon.chat2,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Questions")
                ],
              ),
            )
          ]),
    );
  }
}
