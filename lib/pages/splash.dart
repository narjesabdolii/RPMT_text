import 'dart:async';
import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';
import 'dart:ui';
import 'Home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState()
  {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async
  {
    await Future.delayed(const Duration(seconds: 5),(){});
    Navigator.pushReplacement(context,MaterialPageRoute(
        builder: (context)=> const Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: const Alignment(0, 0),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/splash.png'),
            ),
          ),

          child:Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(0.0, 150.0, 20.0, 10.0),
                child:  const Text('RPMT',
                  style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'IndieFlower-Regular',
                    fontSize: 30.0,
                    letterSpacing: 3.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0.0, 350.0, 20.0, 10.0),
                child:  Text(' تست هوش  تصویری ریون',
                  style: PersianFonts.Vazir.copyWith(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],

          )
      ),

    );
  }
}
