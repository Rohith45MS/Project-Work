import 'package:flutter/material.dart';

import 'Home.dart';

class Notification_page extends StatefulWidget {
  const Notification_page({super.key});

  @override
  State<Notification_page> createState() => _Notification_pageState();
}

class _Notification_pageState extends State<Notification_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFF),
        leading: GestureDetector(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Homescreen()));
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF4F7B39)
          ),
        ),
        title: Text(
          'Notification',
          style: TextStyle(
            color: Color(0xFF4F7B39),
            fontSize: 24,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 120.0),
            child: SizedBox(
                width: 131,
                height: 183,
                child: Image.asset('asset/images/No notification 1.png')
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Center(
              child: Text(
                'NO Notifications',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Center(
              child: Text(
                'It seems like you haven’t \n'
                    'received any notifications yet',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
