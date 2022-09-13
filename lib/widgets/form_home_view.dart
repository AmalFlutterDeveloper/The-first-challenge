import 'package:challenge_one/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

FormHomeView() {
  return Container(
    width: double.infinity,
    height: 150,
    margin: const EdgeInsets.only(top: 10),
    child: Stack(clipBehavior: Clip.none, children: [
      Container(
        height: 200,
        width: 250,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(5, 5), blurRadius: 10)
          ],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(70),
            bottomRight: Radius.circular(70),
          ),
        ),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTextField(
                hintText: 'Username',
              ),
              CustomTextField(
                hintText: '*******',
              )
            ],
          ),
        ),
      ),
      Positioned(
          top: 40,
          left: 210,
          child: Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(-3, 3))
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.green[600]!,
                        Colors.green[200]!,
                      ])),
              child: const Icon(
                  color: Colors.white, size: 40, Icons.arrow_forward)))
    ]),
  );
}
