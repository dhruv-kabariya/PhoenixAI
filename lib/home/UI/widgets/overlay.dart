import 'package:flutter/material.dart';

class OverlayClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(0.0, size.height);

    path.lineTo(size.height, size.width);

    // path.lineTo(size.width / 2, size.height + 10);
    // path.lineTo(size.width / 2 - 10, size.width);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width / 2, size.height + 10);
    path.lineTo(size.height, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
