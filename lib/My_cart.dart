import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
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
            'My Cart',
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
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              color: Colors.white,
              height: 72,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0,left: 20),
                        child: Text(
                          'wed, 15 June 2022',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 16.0,left: 150),
                        child: Text(
                          '₹ 30.00',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 20),
                    child: Row(
                      children: [
                        Text(
                          'Order 110523',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 210.0),
                          child: Row(
                            children: [
                              Text(
                                'Details',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              GestureDetector(
                                onTap: (){},
                                child: Icon(Icons.arrow_forward_ios,
                                  color: Colors.black,
                                  size: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


          //2nd

          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              color: Colors.white,
              height: 72,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0,left: 20),
                        child: Text(
                          'Sat, 11 June 2022',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 16.0,left: 150),
                        child: Text(
                          '₹ 200.00',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 20),
                    child: Row(
                      children: [
                        Text(
                          'Order 110523',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 210.0),
                          child: Row(
                            children: [
                              Text(
                                'Details',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              GestureDetector(
                                onTap: (){},
                                child: Icon(Icons.arrow_forward_ios,
                                  color: Colors.black,
                                  size: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


          //3rd

          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              color: Colors.white,
              height: 72,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0,left: 20),
                        child: Text(
                          'Mon, 06 June 2022',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 16.0,left: 140),
                        child: Text(
                          '₹ 520.50',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 20),
                    child: Row(
                      children: [
                        Text(
                          'Order 110523',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 210.0),
                          child: Row(
                            children: [
                              Text(
                                'Details',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              GestureDetector(
                                onTap: (){},
                                child: Icon(Icons.arrow_forward_ios,
                                  color: Colors.black,
                                  size: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
