import 'package:flutter/material.dart';
import 'package:projectwork/selling%20products.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Cart.dart';
import 'Notification.dart';
import 'Popular products.dart';
import 'Profile.dart'; 
import 'Wishlist.dart';
import 'category.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var pagecontroll= PageController();

  var intsum=0;

  var Pagesshow=[
    Homescreen(),
    CartPage(),
    Wishlist(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(

        bottomNavigationBar: BottomNavigationBar(
          items:[
            BottomNavigationBarItem(
                icon:Icon(Icons.home,
                  color: Color(0xFF4F7B39),
                ),
                label: "Home",
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.shopping_bag_outlined,
                  color: Color(0xFF4F7B39),
                ),
                label: "Bag",
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.favorite_border,
                  color: Color(0xFF4F7B39),
                ),
                label: "Menu",
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.person_outline,
                  color: Color(0xFF4F7B39),
                ),
                label: "Menu",
            ),
          ],
          iconSize: 32,
          selectedFontSize: 12,
          showUnselectedLabels: false,
          currentIndex: intsum,
          onTap: (int index){
            setState(() {
              intsum=index;
            });
          },

        ),
         body:SingleChildScrollView(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding: const EdgeInsets.only(
                  left: 10,
                 ),
                 child: Row(
                   children: [
                     SizedBox(
                         width: 180,
                         height: 90,
                         child: Image.asset("asset/images/Logo with name 1.png")
                     ),
                     Padding(
                       padding: const EdgeInsets.only(
                           right: 10,
                         left: 150,
                       ),
                       child: SizedBox(
                           child: GestureDetector(
                             onTap: (){
                               Navigator.push(context,
                                   MaterialPageRoute(builder: (context)=>Notification_page()));
                             },
                             child: Icon(Icons.notifications_none_outlined,
                               color: Color(0xFF4F7B39),
                               size: 30,),
                           )
                       ),
                     ),
                   ],
                 ),
               ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                        left: 28,
                      right: 20,
                    ),
                    child: SizedBox(
                        width: 340,
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
               Padding(
                 padding: const EdgeInsets.only(
                     top: 20.0,
                   left: 40,
                   right: 20,
                 ),
                 child: Column(
                   children: [
                     SizedBox(
                         height: 125,
                         width: 335,
                         child: Image.asset("asset/images/1st banner 2 1.png")),
                     Padding(
                       padding: const EdgeInsets.all(16.0),
                       child: SmoothPageIndicator(
                         controller: pagecontroll,
                         count: 3,
                         effect: const WormEffect(
                           dotHeight: 8,
                           dotWidth: 8,
                           type: WormType.thinUnderground,
                           dotColor: Color(0xFFDDEED4),
                           activeDotColor: Color(0xFF4F7B39),
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0
                        ),
                        child: Text(
                        'Category',
                        style: TextStyle(
                          color: Color(0xFF4F7B39),
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 220,
                        ),
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>CategoryPage()));
                          },
                          child: Text(
                            'View all',
                            style: TextStyle(
                              color: Color(0xFF4F7B39),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
               Padding(
                 padding: const EdgeInsets.only(
                     left: 20.0,
                   right: 20,
                   top: 8,
                 ),
                 child: Row(
                   children: [
                     SizedBox(
                       width: 76,
                       height: 96,
                       child: GestureDetector(
                         onTap: (){},
                         child: Card(
                           color: Color(0xFFE4EFDE),
                           child: Column(
                             children: [
                               SizedBox(
                                   width: 74,
                                   height: 60,
                                   child: Image.asset('asset/images/basket-full-vegetables 1.png')),
                               Text(
                           'Vegetables',
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 12,
                             fontFamily: 'Poppins',
                             fontWeight: FontWeight.w500,
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
                 ),
                     Spacer(),
                     SizedBox(
                       width: 76,
                       height: 96,
                       child: GestureDetector(
                         onTap: (){},
                         child: Card(
                           color: Color(0xFFE4EFDE),
                           child: Column(
                             children: [
                               SizedBox(
                                   width: 74,
                                   height: 60,
                                   child: Image.asset(
                                       'asset/images/colorful-fruits-tasty-fresh-ripe-juicy-white-desk 1.png'
                                   )
                               ),
                               Text(
                                 'Fruits',
                                 style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 12,
                                   fontFamily: 'Poppins',
                                   fontWeight: FontWeight.w500,
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                     ),
                     Spacer(),
                     SizedBox(
                         width: 76,
                         height: 96,
                         child: GestureDetector(
                             onTap: (){},
                             child: Card(
                               color: Color(0xFFE4EFDE),
                               child: Column(
                                 children: [
                                   SizedBox(
                                       width: 74,
                                       height: 60,
                                       child: Image.asset(
                                           'asset/images/nuts-walnut-peanuts-almond-seeds 1.png'
                                       )
                                   ),
                                   Text(
                                     'Dry Fruits',
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 12,
                                       fontFamily: 'Poppins',
                                       fontWeight: FontWeight.w500,
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                         ),
                     ),
                     Spacer(),
                     SizedBox(
                       width: 76,
                       height: 96,
                       child: GestureDetector(
                         onTap: (){},
                         child: Card(
                           color: Color(0xFFE4EFDE),
                           child: Column(
                             children: [
                               SizedBox(
                                   width: 74,
                                   height: 60,
                                   child: Image.asset(
                                       'asset/images/whole-chicken-sliced-carrots-plate-burlap-napkin-blue-surface 1.png'
                                   )
                               ),
                               Text(
                                 'Meat',
                                 style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 12,
                                   fontFamily: 'Poppins',
                                   fontWeight: FontWeight.w500,
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                     ),
                   ]
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.only(
                     left: 20.0,
                   top: 24,
                 ),
                 child: SizedBox(
                   width: 55,
                   height: 40,
                   child: Text(
                     'Offers',
                     style: TextStyle(
                       color: Color(0xFF4F7B39),
                       fontSize: 18,
                       fontFamily: 'Poppins',
                       fontWeight: FontWeight.w600,
                     ),
                   ),
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.only(
                     left: 20.0,
                 ),
                 child: SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Row(
                     children:[
                       SizedBox(
                           width: 251,
                           height: 159,
                           child: Image.asset("asset/images/Artboard 1 1.png")),
                       Padding(
                         padding: const EdgeInsets.only(left: 16.0),
                         child: SizedBox(
                             width: 251,
                             height: 159,
                             child: Image.asset("asset/images/Orange banner 1.png")),
                       ),
                     ],
                   ),
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.only(
                     left: 160.0,
                   top: 12,
                 ),
                 child: SmoothPageIndicator(
                   controller: pagecontroll,
                   count: 3,
                   effect: const WormEffect(
                     dotHeight: 8,
                     dotWidth: 8,
                     type: WormType.thinUnderground,
                     dotColor: Color(0xFFDDEED4),
                     activeDotColor: Color(0xFF4F7B39),
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(
                     left: 20.0,
                   top: 24,
                 ),
                 child: Row(
                   children: [
                     Text(
                       'Best Selling Products',
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 18,
                         fontFamily: 'Poppins',
                         fontWeight: FontWeight.w600,
                         height: 0,
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 130.0),
                       child: GestureDetector(
                         onTap: (){
                           Navigator.push(context,
                               MaterialPageRoute(builder: (context)=>SellingProducts()));
                         },
                         child: Text(
                           'View all',
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 12,
                             fontFamily: 'Poppins',
                             fontWeight: FontWeight.w400,
                             height: 0,
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
               ),

               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(
                       left: 20.0,
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
                               child: Image.asset('asset/images/tomatoes 1.png'),
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
                                     '30',
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
                                 top: 30,
                                 left: 8,
                                 right: 8,
                               ),
                               child: Image.asset('asset/images/orange-juicy-ripe-circle-citrus 1.png'),
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


               Padding(
                 padding: const EdgeInsets.only(top: 32.0),
                 child: Center(
                   child: SizedBox(
                     width: 335,
                     height: 135,

                     child:Image.asset('asset/images/Banner bigg 1.png')
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(
                   left: 160.0,
                   top: 12,
                 ),
                 child: SmoothPageIndicator(
                   controller: pagecontroll,
                   count: 3,
                   effect: const WormEffect(
                     dotHeight: 8,
                     dotWidth: 8,
                     type: WormType.thinUnderground,
                     dotColor: Color(0xFFDDEED4),
                     activeDotColor: Color(0xFF4F7B39),
                   ),
                 ),
               ),



               Padding(
                 padding: const EdgeInsets.only(
                   left: 20.0,
                   top: 24,
                 ),
                 child: Row(
                   children: [
                     Text(
                       'Popular Products',
                       style: TextStyle(
                         color: Color(0xFF4F7B39),
                         fontSize: 18,
                         fontFamily: 'Poppins',
                         fontWeight: FontWeight.w600,
                         height: 0,
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 130.0),
                       child: GestureDetector(
                         onTap: (){
                           Navigator.push(context,
                               MaterialPageRoute(builder: (context)=>Popular()));
                         },
                         child: Text(
                           'View all',
                           style: TextStyle(
                             color: Color(0xFF4F7B39),
                             fontSize: 12,
                             fontFamily: 'Poppins',
                             fontWeight: FontWeight.w400,
                             height: 0,
                           ),
                         ),
                       ),
                     ),
                   ],
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

               Container(
                 color: Colors.white,
                 width: 392,
                 height: 20,
               ),



             ]
           ),
         )
    )
    )
    );
  }
}
