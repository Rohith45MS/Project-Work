import 'package:flutter/material.dart';

import 'Home.dart';
import 'Signup1.dart';

class ProjectLogin extends StatefulWidget {
  const ProjectLogin({super.key});

  @override
  State<ProjectLogin> createState() => _ProjectLoginState();
}

class _ProjectLoginState extends State<ProjectLogin> {

  TextEditingController UserName=TextEditingController();
  TextEditingController PassWord=TextEditingController();

  var _formKey = GlobalKey<FormState>();


  void login() {
    final isValid = _formKey.currentState?.validate();
    if (!isValid!) {

      Navigator.push(context,
          MaterialPageRoute(builder: (context)=>Homescreen()));
    }
    _formKey.currentState?.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                  child: Image.asset('asset/images/Group 2.png')
              ),

          Padding(
            padding: const EdgeInsets.only(
                left: 16.0,
              right: 16,
            ),
            child: TextFormField(
              controller: UserName,
              decoration: InputDecoration(
                fillColor: Color(0xFF4F7B39),
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(16.0),
                      borderSide: BorderSide(
                        color: Color(0xFF4F7B39),
                        width: 12.0,
                      )
                  ),
                  labelText: 'Username',
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,)
              ),
              keyboardType: TextInputType.emailAddress,
              onFieldSubmitted: (value){
              },
              validator:(value){
                if(
                value!.isEmpty ||
                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value))
                {
                  return "enter valid username";
                }
                return null;
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
                left: 16.0,
              right: 16,
              top: 16,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(16.0),
                    borderSide: BorderSide(
                      color: Color(0xFF4F7B39),
                    ),
                ),
                prefixIcon: Icon(Icons.lock_outline),
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                labelText: "Password",
                labelStyle: TextStyle(
                    color: Colors.black45,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
                hintStyle: TextStyle(
                    color: Colors.black12
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              onFieldSubmitted: (value){
              },
              validator:
                  (value){
                if(
                value!.isEmpty ||
                    !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#&*~]).{8,}\$').hasMatch(value))
                {
                  return "valid password";
                }
                return null;
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
                left: 225.0,
              top: 8,
            ),
            child: TextButton(
                onPressed: (){},
                child: Text("Forgot Password?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                  ),
                ),
            ),
          ),
          ElevatedButton(
              onPressed: (){
                login();
              },
              child: Text(
                'Login',
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
          Padding(
            padding: const EdgeInsets.only(
                left: 88.0,
              top: 10,
            ),
            child: Row(
              children: [
                Text(
                  "Don’t have an account ?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SignupOne()));
                  },
                  child: Text(
                    'Sign UP',
                    style: TextStyle(
                      color: Color(0xFF4F7B39),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'or',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 16.0,
              left: 150,
            ),
            child: Row(
              children: [
                GestureDetector(
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: ShapeDecoration(
                        color: Color(0xFFDDEED4),
                      shape: OvalBorder(),
                    ),
                      child: Image.asset('asset/images/R (2) 1.png')
                  ),
                  onTap: (){},
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: GestureDetector(
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: ShapeDecoration(
                          color: Color(0xFFDDEED4),
                          shape: OvalBorder(),
                        ),
                        child: Image.asset('asset/images/facebook.png')
                    ),
                    onTap: (){},
                  ),
                ),
              ],
            ),
          ),

          ],
          ),
        ),
      ),
    );
  }
}
