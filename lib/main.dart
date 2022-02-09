import 'package:flutter/material.dart';
import 'package:intellejencetest/pages/Home.dart';
import 'package:intellejencetest/pages/Question_one.dart';
import 'package:intellejencetest/pages/Question_three.dart';
import 'package:intellejencetest/pages/Question_two.dart';
import 'package:intellejencetest/pages/splash.dart';

void main() {
  runApp(MaterialApp(
    home: const Splash(),
    routes: {
      '/splash' : (context) => const Splash(),
      '/home' : (context) => const Home(),
      '/Question_one' : (context) => const QuestionOne(),
      '/Question_two' : (context)=> const QuestionTwo(),
      '/Question_three' : (context) => const QuestionThree(),
    },
  ));
}