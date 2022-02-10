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
      body: Container(
        alignment: const Alignment(-2, 0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/screen.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(130.0, 200.0, 20.0, 10.0),
              child: Text(
                'در این تست مجموعه ای ',
                style: PersianFonts.Yekan.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
                textAlign: TextAlign.end,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(90.0, 0.0, 20.0, 10.0),
              child: Text(
                'از تصاویر به فرد ارائه ',
                style: PersianFonts.Yekan.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
                textAlign: TextAlign.end,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(95.0, 0.0, 20.0, 10.0),
              child: Text(
                'می شود که باید جای خالی ',
                style: PersianFonts.Yekan.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
                textAlign: TextAlign.end,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(90.0, 0.0, 20.0, 10.0),
              child: Text('را با تصاویر پیشنهادی ',
                style: PersianFonts.Yekan.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
                textAlign: TextAlign.end,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(180.0, 0.0, 20.0, 10.0),
              child: Text(' درست پر کند ',
                style: PersianFonts.Yekan.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
                textAlign: TextAlign.end,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(70.0, 10.0, 20.0, 10.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, '/Question_one');
                  });
                },
                child: Text(
                  'شروع آزمون',
                  style: PersianFonts.Yekan.copyWith(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal[400],
                ),
              ),
            ),
          ],
        ),
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



