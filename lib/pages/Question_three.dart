import 'package:flutter/material.dart';

class QuestionThree extends StatefulWidget {
  const QuestionThree({Key? key}) : super(key: key);

  @override
  _QuestionThreeState createState() => _QuestionThreeState();
}

class _QuestionThreeState extends State<QuestionThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text( 'RPMT',
          style: TextStyle(
            fontFamily: 'IndieFlower-Regular',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal[700],
        centerTitle: true,
      ),
    );
  }
}
