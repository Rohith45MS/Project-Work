import 'package:flutter/material.dart';
import 'package:projectwork/stylesheet.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Container(
              width: 335,
              height: 232,
              decoration: ShapeDecoration(
                color: Color(0xFFFFFFFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top:14,
                    right: 16,
                    child: SizedBox(
                      width:25,
                      height: 25,
                      child: GestureDetector(
                        onTap: (){},
                        child: Icon(
                          Icons.settings_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 28,
                    left: 126,
                    right: 125,
                    child: SizedBox(
                      width: 84,
                        height: 84,
                        child: CircleAvatar()
                    ),
                  ),
                  Positioned(
                    top:120,
                    left: 120,
                    child: ProfileMainText(text: "Will Johnson"),
                  ),
                  Positioned(
                    top:148,
                    left: 120,
                    child: SmallText(text: "+91 8632148965")
                  ),

                ],
              ),
            ),
          ),

          //orders
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.history,
                    color: Color(0xFF4F7B39),
                    size: 24,
                  ),
                  title: Text(
                    'My Orders',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing:
                  GestureDetector(
                    onTap: (){},
                    child: Icon(Icons.arrow_forward_ios_outlined,
                      color: Color(0xFF4F7B39),
                      size: 20,
                    ),
                  ),
                ),

                //track
                ListTile(
                  leading: Icon(Icons.bus_alert_outlined,
                    color: Color(0xFF4F7B39),
                    size: 24,
                  ),
                  title: Text(
                    'Track orders',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing:
                  GestureDetector(
                    onTap: (){},
                    child: Icon(Icons.arrow_forward_ios_outlined,
                      color: Color(0xFF4F7B39),
                      size: 20,
                    ),
                  ),
                ),


                //address
                ListTile(
                  leading:
                  Icon(Icons.location_on,
                    color: Color(0xFF4F7B39),
                    size: 24,
                  ),
                  title:
                  Text(
                    'Address',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: GestureDetector(
                    onTap: (){},
                    child: Icon(Icons.arrow_forward_ios_outlined,
                      color: Color(0xFF4F7B39),
                      size: 20,
                    ),
                  ),
                ),

                //contacts
                ListTile(
                  leading: Icon(Icons.phone_in_talk,
                    color: Color(0xFF4F7B39),
                    size: 24,
                  ),
                  title: Text(
                    'Contacts',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing:
                  GestureDetector(
                    onTap: (){},
                    child: Icon(Icons.arrow_forward_ios_outlined,
                      color: Color(0xFF4F7B39),
                      size: 20,
                    ),
                  ),
                ),

                //settings

                ListTile(
                  leading: Icon(Icons.settings_outlined,
                    color: Color(0xFF4F7B39),
                    size: 24,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing:
                  GestureDetector(
                    onTap: (){},
                    child: Icon(Icons.arrow_forward_ios_outlined,
                      color: Color(0xFF4F7B39),
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),


          //logout
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: ListTile(
              leading: Icon(Icons.login,
                color: Color(0xFF4F7B39),
                size: 24,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing:
              GestureDetector(
                onTap: (){},
                child: Icon(Icons.arrow_forward_ios_outlined,
                  color: Color(0xFF4F7B39),
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
