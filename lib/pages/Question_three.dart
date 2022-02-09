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
    body: Container(
    alignment: const Alignment(-2, 0),
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/sc.jpg'),
    fit: BoxFit.fill,
    ),
    ),
    ),
    );
  }
}
