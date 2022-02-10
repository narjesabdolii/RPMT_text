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
           Container(
             margin: const EdgeInsets.only(
               left: 80,
               right: 80,
               bottom: 0,
             ),
             child: Column(
               children: <Widget>[
                    Image.asset("assets/test.png"),
                 Container(
                   padding: EdgeInsets.all(30),
                decoration:  BoxDecoration(
               color: Colors.white,
                borderRadius: BorderRadius.circular(30),
               boxShadow:  [
               BoxShadow(
               offset: const Offset(0,10),
               blurRadius: 20,
              color: Colors.amber.withOpacity(0.2),
                 )
                 ],
                   ),
                   child: Text('هوش مقوله ای قابل رویت یا احساس شدنی نیست، بلکه یک صفت فرضی و یک مفهوم انتزاعی و ذهنی است و آثار آن مورد مطالعه و بررسی قرار می گیرد',
                   style: PersianFonts.Yekan.copyWith(
                     fontWeight: FontWeight.bold,
                     fontSize: 17,
                   ) ,
                     textAlign: TextAlign.end,

                   ),

                 ),
               ],
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



