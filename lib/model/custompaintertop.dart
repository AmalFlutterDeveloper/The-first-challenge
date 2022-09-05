import 'package:flutter/material.dart';

class CustomPainterTop extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    final paint = Paint()..color = Colors.deepOrangeAccent;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 1;
    var paints = Offset.zero & size;
    paint.shader = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Colors.deepOrange[700]!,
        Colors.deepOrange[300]!,
      ],
    ).createShader(paints);
    path.moveTo(0, size.height);
    // path.lineTo(size.width * .2, size.height * .9);
    path.quadraticBezierTo(
        size.width * .13, size.height, size.width * 0.15, size.height * .8);
    path.quadraticBezierTo(
        size.width * .20, size.height * .25, size.width * .5, size.height * .4);
    path.quadraticBezierTo(
        size.width * .7, size.height * .53, size.width * .95, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}

class RPSCustomPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 94, 169, 228)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1618333, size.height * 0.9960000);
    path0.quadraticBezierTo(size.width * 0.8481250, size.height * 0.5695000,
        size.width, size.height * 0.0070000);
    path0.quadraticBezierTo(size.width * 1.0003333, size.height * 0.2535000,
        size.width, size.height);
    path0.quadraticBezierTo(size.width * 0.3748750, size.height,
        size.width * 0.1665000, size.height);
    path0.quadraticBezierTo(size.width * 0.1663333, size.height,
        size.width * 0.1618333, size.height * 0.9960000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
