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
            height: 70.0,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    bottom : 40,
                  ),
                  height: 70.0,
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
                        ],
                     ),
                  ),
                 ],
                ),
          ),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                  child :  Row(
                     children:  <Widget>[
                       const TestCard(text: 'هوش مقوله ای قابل رویت یا احساس شدنی نیست، بلکه یک صفت فرضی و یک مفهوم انتزاعی و ذهنی است و آثار آن مورد مطالعه و بررسی قرار می گیرد', address: "assets/test.png"),
                       Container(
                         margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                         child : const Icon(Icons.navigate_next),
                       ),
                       const TestCard(text: 'آزمودنی در مدت 40 دقیقه باید به 60 سوال پاسخ دهد. ماتریس های این آزمون به تدریج دشوارتر می شوند و فرد باید از بین 6 تا 8 گزینه تصویری که منطق الگو را تکمیل می کند را انتخاب کند', address: "assets/book.png"),
                       Container(
                         margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                         child : const Icon(Icons.navigate_next),
                       ),
                       const TestCard(text: 'تست ریون در حقیقت، استدلال انتزاعی و هوش سیال را اندازه‌گیری می‌کند. هوش سیال به ما امکان می‌دهد تا بهتر بتوانیم از پس مشکلات روزمره‌ خود بربیاییم', address: "assets/tst.png"),
                     ],
                   )
               ),
                const BuildButton(buttonText: 'شرکت در آزمون'),
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
class TestCard extends StatelessWidget{
  const TestCard ({
     Key? key,
    required this.text,
    required this.address

})  : super(key: key);
  final String text;
  final String address;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
     margin: const EdgeInsets.fromLTRB(60, 0, 0, 0),
      child: Column(
        children: <Widget>[
          Container(
            height: 250,
            width: 250,
            child: Image(
              image: AssetImage(address),
            ),

          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 100,
            width: 250,
            child: Text(text,
              style: PersianFonts.Yekan.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ) ,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
  }

class BuildButton extends StatelessWidget {
  const BuildButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
        child : ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.teal,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onPressed: (){},
          child: Text(buttonText,
            style: PersianFonts.Yekan.copyWith(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
        )
    );

  }
}




