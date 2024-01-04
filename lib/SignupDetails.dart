import 'package:flutter/material.dart';
import 'package:projectwork/Signup2.dart';

import 'Otp.dart';


class DetailSignup extends StatefulWidget {
  const DetailSignup({super.key});

  @override
  State<DetailSignup> createState() => _DetailSignupState();
}

class _DetailSignupState extends State<DetailSignup> {

  TextEditingController Line1=TextEditingController();
  TextEditingController Line2=TextEditingController();
  TextEditingController City=TextEditingController();
  TextEditingController State=TextEditingController();
  TextEditingController Pincode=TextEditingController();

  var formkey=GlobalKey<FormState>();

  void login() {
    final isValid = formkey.currentState?.validate();
    if (!isValid!) {
      return;
    }
    formkey.currentState?.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        key: formkey,
        child: Form(
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset('asset/images/Group 2.png')
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 20.0,
                  right: 20,
                ),
                child: SizedBox(
                  width: 346,
                  height: 56,
                  child: SizedBox(
                    height: 56,
                    child: TextFormField(
                      controller: Line1,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                color: Color(0xFF4F7B39),
                                width: 12.0,
                              )
                          ),
                          labelText: 'Address Line1',
                          labelStyle: TextStyle(
                            color: Colors.black38,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,)
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
              ),

              Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                    left: 20.0,
                    right: 20,
                  ),
                child: SizedBox(
                  width: 346,
                  height: 56,
                  child: TextFormField(
                    controller: Line2,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Color(0xFF4F7B39),
                              width: 12.0,
                            )
                        ),
                        labelText: 'Address Line2',
                        labelStyle: TextStyle(
                          color: Colors.black38,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,)
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 20.0,
                  right: 20,
                ),
                child: SizedBox(
                  width: 346,
                  height: 56,
                  child: SizedBox(
                    height: 56,
                    child: TextFormField(
                      controller: Line2,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                color: Color(0xFF4F7B39),
                                width: 12.0,
                              )
                          ),
                          suffixIcon: Icon(Icons.arrow_drop_down_sharp),
                          labelText: 'City',
                          labelStyle: TextStyle(
                            color: Colors.black38,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,)
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12,
                        left: 20,
                      right: 8
                    ),
                    child: SizedBox(
                      width: 159,
                      height: 56,
                      child: TextFormField(
                       controller: State,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                color: Color(0xFF4F7B39),
                                width: 12.0,
                              )
                          ),
                            suffixIcon: Icon(Icons.arrow_drop_down_sharp),
                            labelText: 'State',
                            labelStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,)
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                        ),
                      ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16,
                    right: 20,
                      top: 12,
                    ),
                    child: SizedBox(
                      width: 159,
                      height: 56,
                      child: TextFormField(
                        controller: State,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: Color(0xFF4F7B39),
                                  width: 12.0,
                                )
                            ),
                           labelText: 'Zipcode',
                            labelStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>OtpPage()));
                  },
                  child: Text(
                    'Next',
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
            ],
          ),
        ),
      ),
    );
  }
}
