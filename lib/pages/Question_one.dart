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
              Container(
                margin: const EdgeInsets.only(
                  left: 70,
                  right: 0,
                ),
                child : const ButtonCard(address: 'assets/a1.png'),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 45,
                  right: 0,
                ),
                child : const ButtonCard(address: 'assets/b1.png'),
              ),
            ],
          ),
          const SizedBox(height: 30,),
          Row(
            children:  <Widget>[
              Container(
                margin: const EdgeInsets.only(
                  left: 70,
                  right: 0,
                ),
                child : const ButtonCard(address: 'assets/c1.png'),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 45,
                  right: 0,
                ),
                child : const ButtonCard(address: 'assets/d1.png'),
              )
            ],
          ),
          const SizedBox(height: 30,),
         Row(
           children:  <Widget>[
             Container(
               margin: const EdgeInsets.only(
                 left: 70,
                 right: 0,
               ),
               child : const ButtonCard(address: 'assets/e1.png'),
             ),
             Container(
               margin: const EdgeInsets.only(
                 left: 45,
                 right: 0,
               ),
               child : const ButtonCard(address: 'assets/f1.png'),
             )
           ],
         )
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
