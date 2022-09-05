import 'package:challenge_one/screen/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChallengeOne());
}

class ChallengeOne extends StatelessWidget {
  const ChallengeOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
          textTheme: const TextTheme(
              headline2: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.black))),
    );
  }
}
