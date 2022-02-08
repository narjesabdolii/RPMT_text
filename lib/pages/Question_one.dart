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
        child: Column(
          children: <Widget>[
           Container(
             padding: const EdgeInsets.all(45.0),
             child: const Image(
               image: AssetImage('assets/1.png'),
             ),
           ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: ElevatedButton(
                      style:ElevatedButton.styleFrom(
                        primary: Colors.teal,
                      ),
                      onPressed: () {  },
                      child: const Text('1'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: ElevatedButton(
                      style:ElevatedButton.styleFrom(
                        primary: Colors.teal,
                      ),
                      onPressed: () {  },
                      child: const Text('2'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: ElevatedButton(
                      style:ElevatedButton.styleFrom(
                        primary: Colors.teal,
                      ),
                      onPressed: () {  },
                      child: const Text('3'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: ElevatedButton(
                      style:ElevatedButton.styleFrom(
                        primary: Colors.teal,
                      ),
                      onPressed: () {  },
                      child: const Text('4'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: ElevatedButton(
                      style:ElevatedButton.styleFrom(
                        primary: Colors.teal,
                      ),
                      onPressed: () {  },
                      child: const Text('5'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: ElevatedButton(
                      style:ElevatedButton.styleFrom(
                        primary: Colors.teal,
                      ),
                      onPressed: () {  },
                      child: const Text('6'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.pushNamed(context,'/Question_two');
          });
        },
        child: const Icon(Icons.navigate_next),
        backgroundColor: Colors.orangeAccent,
      ),
    );
  }
}
