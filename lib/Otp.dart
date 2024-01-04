import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:projectwork/Location.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: Image.asset('asset/images/Group 2.png')
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                'Verification',
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
                  'Enter OTP code sent to your number',
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
              padding: const EdgeInsets.only(left:20,
              right: 20,
              top: 52),
              child: OtpTextField(
                fieldWidth: 60,
                fillColor:  Color(0xFFDDEED4),
                numberOfFields: 4,
                showFieldAsBox: true,
                onCodeChanged: (var code){},
                onSubmit: (var varificationCode){
                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text('Verification Code'),
                          content: Text('Code entered is $varificationCode'),
                        );
                      }
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Locationadd()));
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
          ],
        ),
      ),
    );
  }
}
