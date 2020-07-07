import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key key,
    @required this.boxwidth,
  }) : super(key: key);

  final double boxwidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: boxwidth * 2, right: boxwidth * 2),
      height: 40,
      child: Image.asset("logo4.png"),
    );
  }
}
