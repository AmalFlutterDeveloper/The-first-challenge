import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import '../model/custompainterbottom.dart';
import '../model/custompaintertop.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    var WIDTH = size.width;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: CustomPaint(
              size: Size(WIDTH, (WIDTH * 0.3333333333333333).toDouble()),
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
          ),
          Container(
            width: double.infinity,
            height: 150,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Stack(children: [
              Container(
                width: WIDTH / 1.2,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(5, 5),
                        blurRadius: 10)
                  ],
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(70),
                    bottomRight: Radius.circular(70),
                  ),
                ),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person_pin),
                          hintText: 'Username',
                          hintStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0, color: Colors.black.withOpacity(0)),
                          ),
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person_pin),
                          hintText: '********',
                          hintStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0, color: Colors.black.withOpacity(0)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 40,
                  left: WIDTH / 1.3,
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
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.only(right: 20),
            child: const Text(
              'Forgot?',
              style: TextStyle(
                  color: Color.fromARGB(255, 194, 191, 191),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.only(left: 20),
            child: const Text(
              'Register',
              style: TextStyle(
                  color: Color.fromARGB(255, 230, 174, 6),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(bottom: 0),
              child: CustomPaint(
                size: Size(
                    WIDTH,
                    (WIDTH * 0.3333333333333333)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: CustomPainterBottom(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
