import 'package:ai/icons/my_icon_icons.dart';
import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      // constraints: BoxConstraints.expand(height: 50),

      alignment: Alignment.topLeft,
      child: TabBar(
          indicatorColor: Theme.of(context).primaryColor,
          isScrollable: true,
          indicatorWeight: 3,
          indicatorPadding: EdgeInsets.zero,
          tabs: [
            CustomTabIcon(
              name: "About",
              icon: Icons.import_contacts,
              iconColor: Colors.blue,
            ),
            CustomTabIcon(
              name: "Question",
              icon: MyIcon.chat2,
              iconColor: Colors.black,
            ),
            CustomTabIcon(
              name: "Try",
              icon: Icons.code,
              iconColor: Colors.red,
            )
          ]),
    );
  }
}

class CustomTabIcon extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color iconColor;
  const CustomTabIcon({
    @required this.name,
    @required this.icon,
    @required this.iconColor,
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
            color: iconColor,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            name,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
