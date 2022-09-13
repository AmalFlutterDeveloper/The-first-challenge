import 'package:flutter/material.dart';

class CustomPainterBottom extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.blue;
    paint.style = PaintingStyle.fill;
    final path = Path();
    path.moveTo(size.width * .2, size.height);
    path.quadraticBezierTo(
        size.width * .2, size.height * .9, size.width * .4, size.height * .8);
    path.quadraticBezierTo(size.width * .7, size.height * .7, size.width, 0);
    ;
    path.lineTo(size.width, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
