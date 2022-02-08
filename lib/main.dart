import 'package:flutter/material.dart';
import 'package:intellejencetest/pages/Home.dart';
import 'package:intellejencetest/pages/splash.dart';

void main() {
  runApp(MaterialApp(
    home: const Splash(),
    routes: {
      '/splash' : (context) => const Splash(),
      '/home' : (context) => const Home(),
    },
  ));
}