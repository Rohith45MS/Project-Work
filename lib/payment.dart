import 'package:flutter/material.dart';

class Paymentpage extends StatefulWidget {
  const Paymentpage({super.key});

  @override
  State<Paymentpage> createState() => _PaymentpageState();
}

class _PaymentpageState extends State<Paymentpage> {

  String ? payment;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.12,
            leading: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Icon(
                Icons.arrow_back_ios_new_sharp,
                size: 24,
                color: Color(0xFF4F7B39),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 88.0),
              child: Text(
                'Payment',
                style: TextStyle(
                  color: Color(0xFF4F7B39),
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                    border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color:Color(0xFF4F7B39),
                        )
                    )
                  ),
                  child: ListTile(
                    leading: Radio(
                        value: 'cash',
                        groupValue: payment,
                        onChanged: (String? value){
                          setState(() {
                            payment= value;
                          });
                        },
                      activeColor:Color(0xFF4F7B39),
                    ),
                    title:  Text(
                      'Cash on Delivery',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(
                          width: 0.4,
                          color:Color(0xFF4F7B39),
                        )
                    )
                ),
                child: ListTile(
                  leading: Radio(
                    value: 'debit',
                    groupValue: payment,
                    onChanged: (String? value){
                      setState(() {
                        payment= value;
                      });
                    },
                    activeColor:Color(0xFF4F7B39),
                  ),
                  title:  Text(
                    'Debit or Credit',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(
                          width: 0.4,
                          color:Color(0xFF4F7B39),
                        )
                    )
                ),
                child: ListTile(
                  leading: Radio(
                    value: 'net',
                    groupValue: payment,
                    onChanged: (String? value){
                      setState(() {
                        payment= value;
                      });
                    },
                    activeColor:Color(0xFF4F7B39),
                  ),
                  title:  Text(
                    'Net Banking',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),


              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(
                          width: 0.8,
                          color:Color(0xFF4F7B39),
                        )
                    )
                ),
                child: ListTile(
                  leading: Radio(
                    value: 'upi',
                    groupValue: payment,
                    onChanged: (String? value){
                      setState(() {
                        payment= value;
                      });
                    },
                    activeColor:Color(0xFF4F7B39),
                  ),
                  title:  Text(
                    'UPI',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
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
