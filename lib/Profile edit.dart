import 'package:flutter/material.dart';


class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {

  TextEditingController Firstname= TextEditingController();
  TextEditingController Secondname= TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Phone = TextEditingController();
  TextEditingController Username = TextEditingController();
  TextEditingController Password = TextEditingController();


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
          padding: const EdgeInsets.only(left: 70.0),
          child: Text(
            'Profile Settings',
            style: TextStyle(
              color: Color(0xFF4F7B39),
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView(
          children: [
            Container(
              color: Colors.white,
              height: 180,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top:26,
                        left: 16.0,
                        right: 16),
                    child: SizedBox(
                      width: 335,
                      height: 52,
                      child: TextField(
                        controller: Firstname,
                        decoration: InputDecoration(
                          labelText: "First Name",
                          border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(
                        top:26,
                        left: 16.0,
                        right: 16),
                    child: SizedBox(
                      height: 52,
                      width: 335,
                      child: TextField(
                        controller: Secondname,
                        decoration: InputDecoration(
                          labelText: "Second Name",
                          border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                color: Colors.white,
                height: 180,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top:26,
                          left: 16.0,
                          right: 16),
                      child: SizedBox(
                        width: 335,
                        height: 52,
                        child: TextField(
                          controller: Email,
                          decoration: InputDecoration(
                            labelText: "Email",
                            border: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(
                          top:26,
                          left: 16.0,
                          right: 16),
                      child: SizedBox(
                        height: 52,
                        width: 335,
                        child: TextField(
                          controller: Phone,
                          decoration: InputDecoration(
                            labelText: "Phone number",
                            border: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                color: Colors.white,
                height: 180,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top:26,
                          left: 16.0,
                          right: 16),
                      child: SizedBox(
                        width: 335,
                        height: 52,
                        child: TextField(
                          controller: Username,
                          decoration: InputDecoration(
                            labelText: "User Name",
                            border: OutlineInputBorder(
                                borderRadius:BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(
                          top:26,
                          left: 16.0,
                          right: 16),
                      child: SizedBox(
                        height: 52,
                        width: 335,
                        child: TextField(
                          controller: Password,
                          decoration: InputDecoration(
                            labelText: "Password",
                            border: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
