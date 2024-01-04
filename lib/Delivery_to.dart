import 'package:flutter/material.dart';

class Delivery_page extends StatefulWidget {
  const Delivery_page({super.key});

  @override
  State<Delivery_page> createState() => _Delivery_pageState();
}

class _Delivery_pageState extends State<Delivery_page> {

  String? Address;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_new_sharp,
          size: 26,
          color: Color(0xFF4F7B39),
        ),

        title:  Padding(
          padding: const EdgeInsets.only(left: 80.0),
          child: Text(
            'Delivery to',
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
          Container(
            width: 375,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
              border:Border(
                bottom: BorderSide(
                  color: Color(0xFF4F7B39),
                  width: 0.9,
                ),
              )
            ),
            child: ListTile(
              leading: Radio(
                  value: 'CurrentAddress',
                  groupValue: Address,
                  onChanged: (String? value){
                    setState(() {
                      Address=value;
                    });
                  },
                activeColor:Color(0xFF4F7B39),
              ),
              title: Text(
                'Current Address',
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
            padding: const EdgeInsets.only(top: 2.0),
            child: Container(
              width: 375,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
              ),
              child: ListTile(
                leading: Radio(
                  value: 'New Address',
                  groupValue: Address,
                  onChanged: (String? value){
                      setState(() {
                        Address= value;
                      });
                  },
                  activeColor:Color(0xFF4F7B39),
                ),
                title: Text(
                  'New Address',
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
        ],
      ),
    );
  }
}