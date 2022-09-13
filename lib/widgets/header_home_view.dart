import 'package:challenge_one/widgets/custompainter_top.dart';
import 'package:flutter/material.dart';

headerHomeView(context, width) {
  return SizedBox(
    height: 250,
    width: double.infinity,
    child: CustomPaint(
      size: Size(width, (width * 0.3333333333333333).toDouble()),
      painter: CustomPainterTop(),
      child: Container(
        padding: const EdgeInsets.only(bottom: 20),
        alignment: Alignment.bottomCenter,
        child: Text(
          'Login',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    ),
  );
}
