import 'package:flutter/material.dart';

import 'Home.dart';


class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
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
              'Category',
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
                    top: 28.0,
                  left: 22,
                ),
                child: SizedBox(
                  width: 100,
                  height: 131,
                  child: GestureDetector(
                    onTap: (){},
                    child: Card(
                      color: Color(0xFFE4EFDE),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 100,
                              height: 80,
                              child: Image.asset('asset/images/basket-full-vegetables 1.png')),
                          Text(
                            'Vegetables',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  top: 28.0,
                  left: 24,
                ),
                child: SizedBox(
                  width: 100,
                  height: 131,
                  child: GestureDetector(
                    onTap: (){},
                    child: Card(
                      color: Color(0xFFE4EFDE),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 100,
                              height: 80,
                              child: Image.asset('asset/images/colorful-fruits-tasty-fresh-ripe-juicy-white-desk 1.png')),
                          Text(
                            'Fruits',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  top: 28.0,
                  left: 24,
                ),
                child: SizedBox(
                  width: 100,
                  height: 131,
                  child: GestureDetector(
                    onTap: (){},
                    child: Card(
                      color: Color(0xFFE4EFDE),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 100,
                              height: 80,
                              child: Image.asset('asset/images/nuts-walnut-peanuts-almond-seeds 1.png')
                          ),
                          Text(
                            'Dry Fruits',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),


          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 22,
                ),
                child: SizedBox(
                  width: 100,
                  height: 131,
                  child: GestureDetector(
                    onTap: (){},
                    child: Card(
                      color: Color(0xFFE4EFDE),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 100,
                              height: 80,
                              child: Image.asset('asset/images/whole-chicken-sliced-carrots-plate-burlap-napkin-blue-surface 1.png')),
                          Text(
                            'Meat',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 24,
                ),
                child: SizedBox(
                  width: 100,
                  height: 131,
                  child: GestureDetector(
                    onTap: (){},
                    child: Card(
                      color: Color(0xFFE4EFDE),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 100,
                              height: 80,
                              child: Image.asset('asset/images/RIPPLE-PRE-DUST-TEA-250G 1.png')),
                          Text(
                            'Tea/Coffe',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 24,
                ),
                child: SizedBox(
                  width: 100,
                  height: 131,
                  child: GestureDetector(
                    onTap: (){},
                    child: Card(
                      color: Color(0xFFE4EFDE),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 100,
                              height: 80,
                              child: Image.asset('asset/images/oil 1.png')
                          ),
                          Text(
                            'Oil & Ghee',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),



          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 22,
                ),
                child: SizedBox(
                  width: 100,
                  height: 131,
                  child: GestureDetector(
                    onTap: (){},
                    child: Card(
                      color: Color(0xFFE4EFDE),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 100,
                              height: 80,
                              child: Image.asset('asset/images/bottelbig 1.png')),
                          Text(
                            'Diary Products',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 24,
                ),
                child: SizedBox(
                  width: 100,
                  height: 131,
                  child: GestureDetector(
                    onTap: (){},
                    child: Card(
                      color: Color(0xFFE4EFDE),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 80,
                              height: 80,
                              child: Image.asset('asset/images/Spices 1.png')),
                          Text(
                            'Spices',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 24,
                ),
                child: SizedBox(
                  width: 100,
                  height: 131,
                  child: GestureDetector(
                    onTap: (){},
                    child: Card(
                      color: Color(0xFFE4EFDE),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 14.0),
                            child: SizedBox(
                                width: 100,
                                height: 80,
                                child: Image.asset('asset/images/Ricebag 1.png')
                            ),
                          ),
                          Text(
                            'Rice',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),


          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 22,
                ),
                child: SizedBox(
                  width: 100,
                  height: 131,
                  child: GestureDetector(
                    onTap: (){},
                    child: Card(
                      color: Color(0xFFE4EFDE),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 100,
                              height: 80,
                              child: Image.asset('asset/images/bottle 1.png')),
                          Text(
                            'Beverages',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 24,
                ),
                child: SizedBox(
                  width: 100,
                  height: 131,
                  child: GestureDetector(
                    onTap: (){},
                    child: Card(
                      color: Color(0xFFE4EFDE),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 100,
                              height: 80,
                              child: Image.asset('asset/images/biscits 1.png')),
                          Text(
                            'Biscuits',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),



              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 24,
                ),
                child: SizedBox(
                  width: 100,
                  height: 131,
                  child: GestureDetector(
                    onTap: (){},
                    child: Card(
                      color: Color(0xFFE4EFDE),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 100,
                              height: 80,
                              child: Image.asset('asset/images/Villain-Hydra-Perfume-Eau-De-SDL840573630-1-36287 1.png')
                          ),
                          Text(
                            'Deodorants',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
