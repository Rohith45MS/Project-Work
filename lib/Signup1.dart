import 'package:flutter/material.dart';

import 'Signup2.dart';


class SignupOne extends StatefulWidget {
  const SignupOne({super.key});

  @override
  State<SignupOne> createState() => _SignupOneState();
}

class _SignupOneState extends State<SignupOne> {

  TextEditingController User=TextEditingController();
  TextEditingController passWord=TextEditingController();
  TextEditingController ConfirmPassword=TextEditingController();

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
      body: Form(
        key: formkey,
          child: SingleChildScrollView(
            child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                  child: Image.asset('asset/images/Group 2.png')
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 56,
                  child: TextFormField(
                    controller: User,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(16.0),
                            borderSide: BorderSide(
                              color: Color(0xFF4F7B39),
                              width: 12.0,
                            )
                        ),
                        labelText: 'Entername',
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
                    left: 20,
                  right: 20,
                ),
                child: SizedBox(
                  height: 56,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(16.0),
                          borderSide: BorderSide(
                            color: Color(0xFF4F7B39),
                            width: 12.0,
                          )
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      labelText: "EnterPassword",
                      labelStyle: TextStyle(color: Colors.black45,fontSize: 16,fontWeight: FontWeight.bold),
                      hintStyle: TextStyle(color: Colors.black12),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                ),
                child: SizedBox(
                  height: 56,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(16.0),
                          borderSide: BorderSide(
                            color: Color(0xFF4F7B39),
                            width: 12.0,
                          )
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      labelText: "ConfirmPassword",
                      labelStyle: TextStyle(color: Colors.black45,fontSize: 16,fontWeight: FontWeight.bold),
                      hintStyle: TextStyle(color: Colors.black12),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SignupTwo()));
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
          )
          )
      ),
    );
  }
}
