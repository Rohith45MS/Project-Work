import 'package:flutter/material.dart';


class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFF),
        title: Text(
          'Wishlist',
          style: TextStyle(
            color: Color(0xFF4F7B39),
            fontSize: 24,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 120.0),
            child: SizedBox(
                width: 131,
                height: 183,
                child: Image.asset('asset/images/empty cart 1.png')
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Center(
              child: Text(
                'Your Wishlist is Empty',
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
            padding: const EdgeInsets.only(top: 8.0),
            child: Center(
              child: Text(
                ' It seems like you haven’t added any\n'
                    'items to your wishlist',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
