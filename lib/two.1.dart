import 'package:flutter/material.dart';
import 'package:projectwork/stylesheet.dart';
import 'package:projectwork/two.2.dart';


class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                          'asset/images/figma splash delivery 1.png'
                      )
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: main_text(text: "Real Time Reporting"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SmallText(text: 'Keeping track of real-time delivery\n  '
                  '  location',),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Splash3()));
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
    );
  }
}