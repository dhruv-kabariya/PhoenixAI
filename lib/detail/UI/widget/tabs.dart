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
          indicatorWeight: 3,
          indicatorPadding: EdgeInsets.zero,
          tabs: [
            CustomTabIcon(
              name: "About",
              icon: Icons.import_contacts,
            ),
            CustomTabIcon(name: "Question", icon: MyIcon.chat2),
            CustomTabIcon(name: "Try", icon: Icons.code)
          ]),
    );
  }
}

class CustomTabIcon extends StatelessWidget {
  final String name;
  final IconData icon;
  const CustomTabIcon({
    @required this.name,
    @required this.icon,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 100,
      padding: EdgeInsets.all(4),
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
          ),
          SizedBox(
            width: 10,
          ),
          Text(name),
        ],
      ),
    );
  }
}
