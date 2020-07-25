import 'package:ai/Universals/toolbarFaltButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrycodeHeader extends SliverPersistentHeaderDelegate {
  final int total;
  final String details;

  const TrycodeHeader({@required this.total, @required this.details});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      // margin: EdgeInsets.all(10),
      color: Colors.blueGrey[800],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.code,
                  size: 20,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  total.toString(),
                  style: TextStyle(
                      letterSpacing: 0.2, color: Colors.white70, fontSize: 16),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  details,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                FilterButton(
                  icon: Icons.arrow_drop_down,
                  title: "Tag",
                  onpressed: () {},
                ),
                FilterButton(
                  icon: Icons.arrow_drop_down,
                  title: "User",
                  onpressed: () {},
                ),
                FilterButton(
                  icon: Icons.arrow_drop_down,
                  title: "Sort",
                  onpressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 60;

  @override
  // TODO: implement minExtent
  double get minExtent => 60;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
