import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class QuestionOne extends StatefulWidget {
  const QuestionOne({Key? key}) : super(key: key);

  @override
  _QuestionOneState createState() => _QuestionOneState();
}

class _QuestionOneState extends State<QuestionOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
        children: <Widget>[
          Container(
            height: 90.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      bottom : 40,
                    ),
                    height: 90.0,
                    decoration: const BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35),
                      ),
                    ),
                  ),
                ],
              ),
          ),
          const SizedBox(height: 30,),
          const QuestionCard(address1: 'assets/a1.png', address2: 'assets/b1.png', address3: 'assets/c1.png', address4: 'assets/d1.png', address5: 'assets/e1.png', address6: 'assets/f1.png'),
          const SizedBox(height: 100,),
          const QuestionCard(address1: 'assets/a2.png', address2: 'assets/b2.png', address3: 'assets/a2.png', address4: 'assets/a2.png', address5: 'assets/a2.png', address6: 'assets/a2.png'),

        ],
      ),
      ),
      );
  }
}

class ButtonCard extends StatelessWidget{
  const ButtonCard ({
    Key? key,
    required this.address

  })  : super(key: key);
  final String address;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/Question_two');
      },
      child: Image(
              image: AssetImage(address),
               fit: BoxFit.fill,
                height: 50,
                width: 100 ,
            ),
          );
  }
}

class AnswerCard extends StatelessWidget{
  const AnswerCard ({
    Key? key,
    required this.address

  })  : super(key: key);
  final String address;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: 70,
        right: 0,
      ),
      child: ButtonCard(address: address,),
    );
  }
}

class QuestionCard extends StatelessWidget{
  const QuestionCard ({
    Key? key, required this.address1, required this.address2, required this.address3, required this.address4, required this.address5, required this.address6,
  })  : super(key: key);
  final String address1;
  final String address2;
  final String address3;
  final String address4;
  final String address5;
  final String address6;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: <Widget>[
          Container(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        bottom : 200,
      ),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/1.png'),
        ),
        borderRadius: BorderRadius.circular(50),
      ),
    ),
          const SizedBox(height: 30,),
          Row(
            children:  <Widget>[
             AnswerCard(address: address1),
             AnswerCard(address: address2),
            ],
          ),
          const SizedBox(height: 30,),
          Row(
            children:  <Widget>[
              AnswerCard(address: address3),
              AnswerCard(address: address4),
            ],
          ),
          const SizedBox(height: 30,),
          Row(
            children:  <Widget>[
             AnswerCard(address: address5),
              AnswerCard(address: address6),
            ],
          ),
        ],
      ),
    );
  }
}
