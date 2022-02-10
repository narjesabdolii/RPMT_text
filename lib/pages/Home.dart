import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children : <Widget>[
          Container(
            height: 130.0,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    bottom : 40,
                  ),
                  height: 130.0,
                  decoration: const BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Text('RPMT',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      const Spacer(),
                     const CircleAvatar(
                       radius: 30,
                         backgroundImage: AssetImage('assets/brain.jpg'),
                         ),
                        ],
                     ),
                  ),
                 ],
                ),
          ),
          const SizedBox(height: 20,),
          Positioned(
            left: 0,
            right: 0,
            bottom: 40,
            child:  Container(
              margin: const EdgeInsets.symmetric(horizontal: 100.0),
              height: 250,
              decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 50,
                      color: Colors.amber,
                    )
                  ],
                  image: const DecorationImage(
                    image: AssetImage('assets/test.png'),
                  )
              ),

            ),
          ),
        ],
      ),
    );
  }
  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.teal,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
    );
  }
}



