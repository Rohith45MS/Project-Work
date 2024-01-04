import 'package:flutter/material.dart';


class Locationadd extends StatefulWidget {
  const Locationadd({super.key});

  @override
  State<Locationadd> createState() => _LocationaddState();
}

class _LocationaddState extends State<Locationadd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: Image.asset('asset/images/Group 2.png')
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              'Enable location',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                'We will need your location to give you\n'
                    ' better experience. ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160.0),
            child: ElevatedButton(
              onPressed: (){
              },
              child: Text(
                'Submit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor:Color(0xFF4F7B39),
                minimumSize: Size(348, 56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: (){},
            child: Text(
              'Not now',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),

    );
  }
}
