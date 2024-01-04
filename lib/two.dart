import 'package:flutter/material.dart';
import 'package:projectwork/stylesheet.dart';
import 'package:projectwork/two.1.dart';


class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Image.asset('asset/images/Ellipse 3.png'),
                  Positioned(
                      top: 80,
                      left: 16,
                      right: 16,
                      child: Image.asset(
                          'asset/images/figma splash fast deli 1.png'
                      )
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: main_text(text: "Shop for your daily needs"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SmallText(text: 'Set your delivery location. Choose your\n  '
                  '  groceries from a wide range of our\n   '
                  ' required products',),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Splash2()));
                },
                child: Text('Next',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:Color(0xFF4F7B39),
                  minimumSize: Size(135, 45),
                ),
              ),
            ),
          ]
    ),
      ),
    );
  }
}

