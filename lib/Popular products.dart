import 'package:flutter/material.dart';

import 'Home.dart';

class Popular extends StatefulWidget {
  const Popular({super.key});

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
         leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: SizedBox(
          width:24,
          height:14,
            child: GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Homescreen()));
            },
             child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF4F7B39),
            ),
          ),
        ),
      ),

          title: Padding(
        padding: const EdgeInsets.only(right: 24),
           child: SizedBox(
              width: 300,
             height: 50,
            child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFF6F6F6),
              hintText: "Search your needs here...",
              hintStyle: TextStyle(
                color: Color(0xFF9B9999),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
              prefixIcon: Icon(
                Icons.search,
                size: 24,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(25.7),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(25.7),
              ),
            ),
          ),
        ),
      ),
    ),

        body: ListView(
            children: [

              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  top: 24,
                ),
                child: Text(
                  'Popular Products',
                  style: TextStyle(
                    color: Color(0xFF4F7B39),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),


              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      top: 24,
                    ),
                    child: SizedBox(
                      width: 155,
                      height: 228,
                      child: Card(
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 14,
                              child: Image.asset('asset/images/Vector 5.png'),
                            ),
                            Positioned(
                                top: 14,
                                left: 120,
                                child: Icon(
                                  Icons.favorite,
                                  size: 24,
                                  color: Colors.black12,
                                )
                            ),
                            Positioned(
                              top: 16,
                              left: 4,
                              child: Text("-25%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 12,
                                left: 8,
                                right: 8,
                              ),
                              child: Image.asset('asset/images/cashews 1.png'),
                            ),
                            Positioned(
                              top: 120,
                              left: 10,
                              child: Text(
                                'Fresh Cashew\n''500g',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            Positioned(
                              top: 154,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(Icons.currency_rupee,
                                      size: 16,
                                      color: Color(0xFF4F7B39),
                                    ),
                                  ),
                                  Text(
                                    '400',
                                    style: TextStyle(
                                      color: Color(0xFF4F7B39),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 170,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8.0,
                                      top: 8,
                                    ),
                                    child: Container(
                                      width: 70,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap:(){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.minimize,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 23,
                                            height: 24,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFD9D9D9),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                              ),
                                            ),
                                            child: Text("1",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: (){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(
                                                Icons.add,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 32.0,
                                        top: 8),
                                    child: GestureDetector(
                                      onTap: (){},
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF4F7B39),
                                          shape: OvalBorder(),
                                        ),
                                        child: Icon(Icons.shopping_bag,
                                          size: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),


                  //orange


                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      top: 24,
                    ),
                    child: SizedBox(
                      width: 155,
                      height: 228,
                      child: Card(
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 14,
                              child: Image.asset('asset/images/Vector 5.png'),
                            ),
                            Positioned(
                                top: 14,
                                left: 120,
                                child: Icon(
                                  Icons.favorite,
                                  size: 24,
                                  color: Colors.black12,
                                )
                            ),
                            Positioned(
                              top: 16,
                              left: 4,
                              child: Text("-25%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                                left: 8,
                                right: 8,
                              ),
                              child: Image.asset('asset/images/RIPPLE-PRE-DUST-TEA-250G 1.png'),
                            ),
                            Positioned(
                              top: 120,
                              left: 10,
                              child: Text(
                                'Ripple Tea\n''500g',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            Positioned(
                              top: 154,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(Icons.currency_rupee,
                                      size: 16,
                                      color: Color(0xFF4F7B39),
                                    ),
                                  ),
                                  Text(
                                    '50',
                                    style: TextStyle(
                                      color: Color(0xFF4F7B39),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 170,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8.0,
                                      top: 8,
                                    ),
                                    child: Container(
                                      width: 70,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap:(){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.minimize,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 23,
                                            height: 24,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFD9D9D9),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                              ),
                                            ),
                                            child: Text("1",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: (){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(
                                                Icons.add,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 32.0,
                                        top: 8),
                                    child: GestureDetector(
                                      onTap: (){},
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF4F7B39),
                                          shape: OvalBorder(),
                                        ),
                                        child: Icon(Icons.shopping_bag,
                                          size: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),


              //Next Card Section

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      top: 24,
                    ),
                    child: SizedBox(
                      width: 155,
                      height: 228,
                      child: Card(
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 14,
                              child: Image.asset('asset/images/Vector 5.png'),
                            ),
                            Positioned(
                                top: 14,
                                left: 120,
                                child: Icon(
                                  Icons.favorite,
                                  size: 24,
                                  color: Colors.black12,
                                )
                            ),
                            Positioned(
                              top: 16,
                              left: 4,
                              child: Text("-25%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 14,
                                left: 16,
                                right: 8,
                              ),
                              child: Image.asset('asset/images/watermelon 1.png'),
                            ),
                            Positioned(
                              top: 120,
                              left: 8,
                              child: Text(
                                'Fresh Organic Watermelon\n''500g',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            Positioned(
                              top: 154,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(Icons.currency_rupee,
                                      size: 16,
                                      color: Color(0xFF4F7B39),
                                    ),
                                  ),
                                  Text(
                                    '20',
                                    style: TextStyle(
                                      color: Color(0xFF4F7B39),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 170,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8.0,
                                      top: 8,
                                    ),
                                    child: Container(
                                      width: 70,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap:(){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.minimize,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 23,
                                            height: 24,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFD9D9D9),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                              ),
                                            ),
                                            child: Text("1",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: (){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.add,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 32.0,
                                        top: 8),
                                    child: GestureDetector(
                                      onTap: (){},
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF4F7B39),
                                          shape: OvalBorder(),
                                        ),
                                        child: Icon(Icons.shopping_bag,
                                          size: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),


                  //apple


                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      top: 24,
                    ),
                    child: SizedBox(
                      width: 155,
                      height: 228,
                      child: Card(
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 14,
                              child: Image.asset('asset/images/Vector 5.png'),
                            ),
                            Positioned(
                                top: 14,
                                left: 120,
                                child: Icon(
                                  Icons.favorite,
                                  size: 24,
                                  color: Colors.black12,
                                )
                            ),
                            Positioned(
                              top: 16,
                              left: 4,
                              child: Text("-25%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 30,
                                left: 8,
                                right: 8,
                              ),
                              child: Image.asset('asset/images/FISH0001 2.png'),
                            ),
                            Positioned(
                              top: 120,
                              left: 10,
                              child: Text(
                                'Fresh Fish\n''500g',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            Positioned(
                              top: 154,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(Icons.currency_rupee,
                                      size: 16,
                                      color: Color(0xFF4F7B39),
                                    ),
                                  ),
                                  Text(
                                    '100',
                                    style: TextStyle(
                                      color: Color(0xFF4F7B39),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 170,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8.0,
                                      top: 8,
                                    ),
                                    child: Container(
                                      width: 70,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap:(){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.minimize,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 23,
                                            height: 24,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFD9D9D9),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                              ),
                                            ),
                                            child: Text("1",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: (){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.add,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 32.0,
                                        top: 8),
                                    child: GestureDetector(
                                      onTap: (){},
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF4F7B39),
                                          shape: OvalBorder(),
                                        ),
                                        child: Icon(Icons.shopping_bag,
                                          size: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),



              //NextSection


              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      top: 24,
                    ),
                    child: SizedBox(
                      width: 155,
                      height: 228,
                      child: Card(
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 14,
                              child: Image.asset('asset/images/Vector 5.png'),
                            ),
                            Positioned(
                                top: 14,
                                left: 120,
                                child: Icon(
                                  Icons.favorite,
                                  size: 24,
                                  color: Colors.black12,
                                )
                            ),
                            Positioned(
                              top: 16,
                              left: 4,
                              child: Text("-25%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                                left: 8,
                                right: 8,
                              ),
                              child: Image.asset('asset/images/meat 1.png'),
                            ),
                            Positioned(
                              top: 120,
                              left: 10,
                              child: Text(
                                'Fresh Meat\n''500g',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            Positioned(
                              top: 154,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(Icons.currency_rupee,
                                      size: 16,
                                      color: Color(0xFF4F7B39),
                                    ),
                                  ),
                                  Text(
                                    '100',
                                    style: TextStyle(
                                      color: Color(0xFF4F7B39),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 170,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8.0,
                                      top: 8,
                                    ),
                                    child: Container(
                                      width: 70,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap:(){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.minimize,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 23,
                                            height: 24,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFD9D9D9),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                              ),
                                            ),
                                            child: Text("1",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: (){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.add,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 32.0,
                                        top: 8),
                                    child: GestureDetector(
                                      onTap: (){},
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF4F7B39),
                                          shape: OvalBorder(),
                                        ),
                                        child: Icon(Icons.shopping_bag,
                                          size: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),


                  //carrot


                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      top: 24,
                    ),
                    child: SizedBox(
                      width: 155,
                      height: 228,
                      child: Card(
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 14,
                              child: Image.asset('asset/images/Vector 5.png'),
                            ),
                            Positioned(
                                top: 14,
                                left: 120,
                                child: Icon(
                                  Icons.favorite,
                                  size: 24,
                                  color: Colors.black12,
                                )
                            ),
                            Positioned(
                              top: 16,
                              left: 4,
                              child: Text("-25%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 24,
                                left: 16,
                                right: 8,
                              ),
                              child: SizedBox(
                                  width: 112,
                                  height: 100,
                                  child: Image.asset('asset/images/carrot 1.png')),
                            ),
                            Positioned(
                              top: 120,
                              left: 5,
                              child: SizedBox(
                                width: 148,
                                height: 130,
                                child: Text(
                                  'Fresh Organic Carrot\n''500g',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 11,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 154,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(Icons.currency_rupee,
                                      size: 16,
                                      color: Color(0xFF4F7B39),
                                    ),
                                  ),
                                  Text(
                                    '60',
                                    style: TextStyle(
                                      color: Color(0xFF4F7B39),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 170,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8.0,
                                      top: 8,
                                    ),
                                    child: Container(
                                      width: 70,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap:(){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.minimize,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 23,
                                            height: 24,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFD9D9D9),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                              ),
                                            ),
                                            child: Text("1",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: (){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.add,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 32.0,
                                        top: 8),
                                    child: GestureDetector(
                                      onTap: (){},
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF4F7B39),
                                          shape: OvalBorder(),
                                        ),
                                        child: Icon(Icons.shopping_bag,
                                          size: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),


              //New Section

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      top: 24,
                    ),
                    child: SizedBox(
                      width: 155,
                      height: 228,
                      child: Card(
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 14,
                              child: Image.asset('asset/images/Vector 5.png'),
                            ),
                            Positioned(
                                top: 14,
                                left: 120,
                                child: Icon(
                                  Icons.favorite,
                                  size: 24,
                                  color: Colors.black12,
                                )
                            ),
                            Positioned(
                              top: 16,
                              left: 4,
                              child: Text("-25%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 30,
                                left: 36,
                                right: 8,
                              ),
                              child: SizedBox(
                                  width: 74,
                                  height: 90,
                                  child: Image.asset('asset/images/honey.png')),
                            ),
                            Positioned(
                              top: 120,
                              left: 10,
                              child: Text(
                                'Fresh Honey\n''500g',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            Positioned(
                              top: 154,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(Icons.currency_rupee,
                                      size: 16,
                                      color: Color(0xFF4F7B39),
                                    ),
                                  ),
                                  Text(
                                    '150',
                                    style: TextStyle(
                                      color: Color(0xFF4F7B39),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 170,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8.0,
                                      top: 8,
                                    ),
                                    child: Container(
                                      width: 70,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap:(){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.minimize,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 23,
                                            height: 24,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFD9D9D9),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                              ),
                                            ),
                                            child: Text("1",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: (){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.add,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 32.0,
                                        top: 8),
                                    child: GestureDetector(
                                      onTap: (){},
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF4F7B39),
                                          shape: OvalBorder(),
                                        ),
                                        child: Icon(Icons.shopping_bag,
                                          size: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),


                  //Tea


                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      top: 24,
                    ),
                    child: SizedBox(
                      width: 155,
                      height: 228,
                      child: Card(
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 14,
                              child: Image.asset('asset/images/Vector 5.png'),
                            ),
                            Positioned(
                                top: 14,
                                left: 120,
                                child: Icon(
                                  Icons.favorite,
                                  size: 24,
                                  color: Colors.black12,
                                )
                            ),
                            Positioned(
                              top: 16,
                              left: 4,
                              child: Text("-25%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                                left: 24,
                                right: 8,
                              ),
                              child: SizedBox(
                                  width: 98,
                                  height: 110,
                                  child: Image.asset('asset/images/orange-juicy-ripe-circle-citrus 1.png')),
                            ),
                            Positioned(
                              top: 120,
                              left: 10,
                              child: Text(
                                'Fresh Organic Orange\n''500g',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            Positioned(
                              top: 154,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(Icons.currency_rupee,
                                      size: 16,
                                      color: Color(0xFF4F7B39),
                                    ),
                                  ),
                                  Text(
                                    '50',
                                    style: TextStyle(
                                      color: Color(0xFF4F7B39),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 170,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8.0,
                                      top: 8,
                                    ),
                                    child: Container(
                                      width: 70,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap:(){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.minimize,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 23,
                                            height: 24,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFD9D9D9),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                              ),
                                            ),
                                            child: Text("1",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: (){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.add,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 32.0,
                                        top: 8),
                                    child: GestureDetector(
                                      onTap: (){},
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF4F7B39),
                                          shape: OvalBorder(),
                                        ),
                                        child: Icon(Icons.shopping_bag,
                                          size: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),


              //Next Section

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      top: 24,
                    ),
                    child: SizedBox(
                      width: 155,
                      height: 228,
                      child: Card(
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 14,
                              child: Image.asset('asset/images/Vector 5.png'),
                            ),
                            Positioned(
                                top: 14,
                                left: 120,
                                child: Icon(
                                  Icons.favorite,
                                  size: 24,
                                  color: Colors.black12,
                                )
                            ),
                            Positioned(
                              top: 16,
                              left: 4,
                              child: Text("-25%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 30,
                                left: 20,
                                right: 8,
                              ),
                              child: SizedBox(
                                  width: 94,
                                  height: 90,
                                  child: Image.asset('asset/images/apple 1.png')),
                            ),
                            Positioned(
                              top: 120,
                              left: 10,
                              child: Text(
                                'Fresh Organic Apple\n''500g',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            Positioned(
                              top: 154,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(Icons.currency_rupee,
                                      size: 16,
                                      color: Color(0xFF4F7B39),
                                    ),
                                  ),
                                  Text(
                                    '80',
                                    style: TextStyle(
                                      color: Color(0xFF4F7B39),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 170,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8.0,
                                      top: 8,
                                    ),
                                    child: Container(
                                      width: 70,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap:(){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.minimize,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 23,
                                            height: 24,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFD9D9D9),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                              ),
                                            ),
                                            child: Text("1",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: (){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.add,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 32.0,
                                        top: 8),
                                    child: GestureDetector(
                                      onTap: (){},
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF4F7B39),
                                          shape: OvalBorder(),
                                        ),
                                        child: Icon(Icons.shopping_bag,
                                          size: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),


                  //Redbull


                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      top: 24,
                    ),
                    child: SizedBox(
                      width: 155,
                      height: 228,
                      child: Card(
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 14,
                              child: Image.asset('asset/images/Vector 5.png'),
                            ),
                            Positioned(
                                top: 14,
                                left: 120,
                                child: Icon(
                                  Icons.favorite,
                                  size: 24,
                                  color: Colors.black12,
                                )
                            ),
                            Positioned(
                              top: 16,
                              left: 4,
                              child: Text("-25%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 30,
                                left: 24,
                                right: 8,
                              ),
                              child: SizedBox(
                                  width: 98,
                                  height: 80,
                                  child: Image.asset('asset/images/Red-Bull-Energy-Drink-350-ML 1.png')),
                            ),
                            Positioned(
                              top: 120,
                              left: 10,
                              child: Text(
                                'Redbull',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            Positioned(
                              top: 154,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(Icons.currency_rupee,
                                      size: 16,
                                      color: Color(0xFF4F7B39),
                                    ),
                                  ),
                                  Text(
                                    '120',
                                    style: TextStyle(
                                      color: Color(0xFF4F7B39),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 170,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8.0,
                                      top: 8,
                                    ),
                                    child: Container(
                                      width: 70,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap:(){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.minimize,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 23,
                                            height: 24,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFD9D9D9),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                              ),
                                            ),
                                            child: Text("1",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: (){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.add,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 32.0,
                                        top: 8),
                                    child: GestureDetector(
                                      onTap: (){},
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF4F7B39),
                                          shape: OvalBorder(),
                                        ),
                                        child: Icon(Icons.shopping_bag,
                                          size: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),



              //NextSection




              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      top: 24,
                    ),
                    child: SizedBox(
                      width: 155,
                      height: 228,
                      child: Card(
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 14,
                              child: Image.asset('asset/images/Vector 5.png'),
                            ),
                            Positioned(
                                top: 14,
                                left: 120,
                                child: Icon(
                                  Icons.favorite,
                                  size: 24,
                                  color: Colors.black12,
                                )
                            ),
                            Positioned(
                              top: 16,
                              left: 4,
                              child: Text("-25%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 30,
                                left: 20,
                                right: 8,
                              ),
                              child: SizedBox(
                                  width: 94,
                                  height: 90,
                                  child: Image.asset('asset/images/tomatoes 1.png')),
                            ),
                            Positioned(
                              top: 120,
                              left: 10,
                              child: Text(
                                'Fresh Organic Tomato\n''500g',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            Positioned(
                              top: 154,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(Icons.currency_rupee,
                                      size: 16,
                                      color: Color(0xFF4F7B39),
                                    ),
                                  ),
                                  Text(
                                    '400',
                                    style: TextStyle(
                                      color: Color(0xFF4F7B39),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 170,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8.0,
                                      top: 8,
                                    ),
                                    child: Container(
                                      width: 70,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap:(){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.minimize,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 23,
                                            height: 24,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFD9D9D9),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                              ),
                                            ),
                                            child: Text("1",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: (){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.add,
                                                size: 16
                                                ,),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 32.0,
                                        top: 8),
                                    child: GestureDetector(
                                      onTap: (){},
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF4F7B39),
                                          shape: OvalBorder(),
                                        ),
                                        child: Icon(Icons.shopping_bag,
                                          size: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),


                  //Tea


                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      top: 24,
                    ),
                    child: SizedBox(
                      width: 155,
                      height: 228,
                      child: Card(
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 14,
                              child: Image.asset('asset/images/Vector 5.png'),
                            ),
                            Positioned(
                                top: 14,
                                left: 120,
                                child: Icon(
                                  Icons.favorite,
                                  size: 24,
                                  color: Colors.black12,
                                )
                            ),
                            Positioned(
                              top: 16,
                              left: 4,
                              child: Text("-25%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 30,
                                left: 24,
                                right: 8,
                              ),
                              child: SizedBox(
                                  width: 98,
                                  height: 80,
                                  child: Image.asset('asset/images/Villain-Hydra-Perfume-Eau-De-SDL840573630-1-36287 1.png')),
                            ),
                            Positioned(
                              top: 120,
                              left: 10,
                              child: Text(
                                'Villain Hydra \n' '100gm',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            Positioned(
                              top: 154,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(Icons.currency_rupee,
                                      size: 16,
                                      color: Color(0xFF4F7B39),
                                    ),
                                  ),
                                  Text(
                                    '550',
                                    style: TextStyle(
                                      color: Color(0xFF4F7B39),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 170,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8.0,
                                      top: 8,
                                    ),
                                    child: Container(
                                      width: 70,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap:(){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.minimize,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 23,
                                            height: 24,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFD9D9D9),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                              ),
                                            ),
                                            child: Text("1",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: (){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.add,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 32.0,
                                        top: 8),
                                    child: GestureDetector(
                                      onTap: (){},
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF4F7B39),
                                          shape: OvalBorder(),
                                        ),
                                        child: Icon(Icons.shopping_bag,
                                          size: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),


              //Next_section


              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      top: 24,
                    ),
                    child: SizedBox(
                      width: 155,
                      height: 228,
                      child: Card(
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 14,
                              child: Image.asset('asset/images/Vector 5.png'),
                            ),
                            Positioned(
                                top: 14,
                                left: 120,
                                child: Icon(
                                  Icons.favorite,
                                  size: 24,
                                  color: Colors.black12,
                                )
                            ),
                            Positioned(
                              top: 16,
                              left: 4,
                              child: Text("-25%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 30,
                                left: 10,
                                right: 8,
                              ),
                              child: SizedBox(
                                  width: 120,
                                  height: 90,
                                  child: Image.asset('asset/images/green-apple.png')),
                            ),
                            Positioned(
                              top: 120,
                              left: 8,
                              child: Text(
                                'Fresh Organic Green Apple\n''500g',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            Positioned(
                              top: 154,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(Icons.currency_rupee,
                                      size: 16,
                                      color: Color(0xFF4F7B39),
                                    ),
                                  ),
                                  Text(
                                    '120',
                                    style: TextStyle(
                                      color: Color(0xFF4F7B39),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 170,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8.0,
                                      top: 8,
                                    ),
                                    child: Container(
                                      width: 70,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap:(){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.minimize,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 23,
                                            height: 24,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFD9D9D9),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                              ),
                                            ),
                                            child: Text("1",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: (){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.add,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 32.0,
                                        top: 8),
                                    child: GestureDetector(
                                      onTap: (){},
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF4F7B39),
                                          shape: OvalBorder(),
                                        ),
                                        child: Icon(Icons.shopping_bag,
                                          size: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),


                  //Cabbage


                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      top: 24,
                    ),
                    child: SizedBox(
                      width: 155,
                      height: 228,
                      child: Card(
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 14,
                              child: Image.asset('asset/images/Vector 5.png'),
                            ),
                            Positioned(
                                top: 14,
                                left: 120,
                                child: Icon(
                                  Icons.favorite,
                                  size: 24,
                                  color: Colors.black12,
                                )
                            ),
                            Positioned(
                              top: 16,
                              left: 4,
                              child: Text("-25%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 30,
                                left: 24,
                                right: 8,
                              ),
                              child: SizedBox(
                                  width: 98,
                                  height: 80,
                                  child: Image.asset('asset/images/Cabbage 1.png')),
                            ),
                            Positioned(
                              top: 120,
                              left: 10,
                              child: Text(
                                'Fresh organic Cabbage\n'
                                    '500gm',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            Positioned(
                              top: 154,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(Icons.currency_rupee,
                                      size: 16,
                                      color: Color(0xFF4F7B39),
                                    ),
                                  ),
                                  Text(
                                    '50',
                                    style: TextStyle(
                                      color: Color(0xFF4F7B39),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 170,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8.0,
                                      top: 8,
                                    ),
                                    child: Container(
                                      width: 70,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap:(){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.minimize,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 23,
                                            height: 24,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFD9D9D9),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                              ),
                                            ),
                                            child: Text("1",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: (){},
                                            child: Container(
                                              width: 23,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF9B9999)),
                                                ),
                                              ),
                                              child: Icon(Icons.add,size: 16,),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 32.0,
                                        top: 8),
                                    child: GestureDetector(
                                      onTap: (){},
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF4F7B39),
                                          shape: OvalBorder(),
                                        ),
                                        child: Icon(Icons.shopping_bag,
                                          size: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]
        )
    );
  }
}

