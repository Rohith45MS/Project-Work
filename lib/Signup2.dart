import 'package:flutter/material.dart';
import 'package:projectwork/Otp.dart';

import 'SignupDetails.dart';


class SignupTwo extends StatefulWidget {
  const SignupTwo({super.key});

  @override
  State<SignupTwo> createState() => _SignupTwoState();
}

class _SignupTwoState extends State<SignupTwo> {

  TextEditingController Email=TextEditingController();
  TextEditingController Phone=TextEditingController();

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
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: Email,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Color(0xFF4F7B39),
                            width: 12.0,
                          )
                      ),
                      labelText: 'Email Id',
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,)
                  ),
                  keyboardType: TextInputType.emailAddress,

                  validator: (value){
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value))
                    {
                      return 'Enter an email';
                    }
                    {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                left: 20,
                right: 20,
                ),
                child: TextFormField(
                  controller: Phone,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Color(0xFF4F7B39),
                            width: 12.0,
                          )
                      ),
                      labelText: 'Phone number',
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,)
                  ),
                  keyboardType: TextInputType.emailAddress,

                    validator: (value){
                      if (
                      value!.isEmpty || !RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(value)
                      )
                      {
                        return 'Enter valid number';
                      }
                      else if (
                      value.length !=10
                      )
                      {
                        return 'Enter 10 digits';
                      }
                      return null;

                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 140.0),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>DetailSignup()));
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
