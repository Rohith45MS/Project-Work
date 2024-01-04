import 'package:flutter/material.dart';
import 'package:projectwork/stylesheet.dart';

import 'Login.dart';


class Splash3 extends StatefulWidget {
  const Splash3({super.key});

  @override
  State<Splash3> createState() => _Splash3State();
}

class _Splash3State extends State<Splash3> {
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
                          'asset/images/splash doorstep 1.png'
                      )
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: main_text(text: "Fast Doorstep Delivery"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SmallText(text: 'Our delivery executive will deliver your\n   '
                  '  order under 24 hours',),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>ProjectLogin()));
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