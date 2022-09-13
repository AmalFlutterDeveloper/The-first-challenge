import 'package:challenge_one/widgets/footer_home_view.dart';
import 'package:challenge_one/widgets/form_home_view.dart';
import 'package:challenge_one/widgets/header_home_view.dart';
import 'package:flutter/material.dart';

class BodyHomeView extends StatelessWidget {
  const BodyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    var width = size.width;
    return Column(
      children: [
        headerHomeView(context, width),
        FormHomeView(),
        Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.symmetric(vertical: 10),
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
        FooterHomeView(context, width),
      ],
    );
  }
}
