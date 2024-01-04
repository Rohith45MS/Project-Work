import 'package:flutter/material.dart';


class Settingspage extends StatefulWidget {
  const Settingspage({super.key});

  @override
  State<Settingspage> createState() => _SettingspageState();
}

class _SettingspageState extends State<Settingspage> {

  var status=false;
  var dark=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_new_sharp,
          size: 26,
          color: Color(0xFF4F7B39),
        ),

        title:  Padding(
          padding: const EdgeInsets.only(left: 90.0),
          child: Text(
            'Settings',
            style: TextStyle(
              color: Color(0xFF4F7B39),
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Text(
              'Notification',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: SizedBox(
              width: 36,
              height: 23,
              child: Transform.scale(
                scale: 0.75,
                child: Switch(
                    value: status,
                    activeColor: Color(0xFF4F7B39),
                    onChanged:(var value) {
                      setState(() {
                        status = value;
                      });
                    }
                ),
              ),
            ),
          ),

          ListTile(
            leading: Text(
              'Dark Mode',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: SizedBox(
              width: 36,
              height: 23,
              child: Transform.scale(
                scale: 0.75,
                child: Switch(
                    value: dark,
                    activeColor: Color(0xFF4F7B39),
                    onChanged:(var value) {
                      setState(() {
                        dark = value;
                      });
                    }
                ),
              ),
            ),
          ),

          ListTile(
            leading: Text(
              'Language',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          ListTile(
            leading: Text(
              'About us',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          ListTile(
            leading: Text(
              'Term and Condition',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
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
