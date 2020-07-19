import 'package:flutter/material.dart';

class DrawContainerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // canvas.drawColor(Colors.white, BlendMode.colorBurn);
    canvas.drawLine(Offset(size.height - 10, size.height),
        Offset(size.height, size.height - 10 + 100), Paint());
    canvas.drawLine(Offset(100, 200), Offset(200, 200), Paint());
    canvas.drawLine(Offset(200, 200), Offset(200, 100), Paint());
    canvas.drawLine(Offset(200, 100), Offset(160, 100), Paint());
    canvas.drawLine(Offset(100, 100), Offset(130, 100), Paint());
    canvas.drawLine(Offset(130, 100), Offset(145, 80), Paint());
    canvas.drawLine(Offset(145, 80), Offset(160, 100), Paint());
  }

  @override
  bool shouldRepaint(DrawContainerPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(DrawContainerPainter oldDelegate) => false;
}
