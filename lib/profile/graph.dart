import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

class Graph extends StatelessWidget {
  const Graph({
    Key key,
    @required this.kStyleHead,
  }) : super(key: key);

  final TextStyle kStyleHead;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 320,
      child: Card(
        shadowColor: Color(0xff121212),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        elevation: 7,
        color: Color(0xff373737),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FeatherIcons.barChart2,
              color: Colors.white,
              size: 30,
            ),
            Text(
              " Graph",
              style: kStyleHead.copyWith(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
