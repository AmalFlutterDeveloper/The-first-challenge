import 'package:challenge_one/widgets/custompainter_bottom.dart';
import 'package:flutter/material.dart';

FooterHomeView(context, width) {
  return Expanded(
    child: Container(
      margin: const EdgeInsets.only(bottom: 0),
      child: CustomPaint(
        size: Size(width, (width * 0.3333333333333333).toDouble()),
        painter: CustomPainterBottom(),
      ),
    ),
  );
}
