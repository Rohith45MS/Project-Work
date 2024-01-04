import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFF),
        title: Text(
          'Cart',
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
          ListTile(
            leading: Text(
              'Delivering to: Kakkanad, 682030',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),

            trailing: GestureDetector(
              onTap: (){},
              child: Text(
                'Change',
                style: TextStyle(
                  color: Color(0xFF4F7B39),
                  fontSize: 11,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
          ),

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
                'Your Cart is Empty',
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
                'Add items to the cart to view\n                  it here.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 130.0,
                left: 32,
                right: 32
            ),
            child: ElevatedButton(onPressed: (){},
                child: Text(
                  'Start Shopping',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              style: ElevatedButton.styleFrom(
                backgroundColor:Color(0xFF4F7B39),
                minimumSize: Size(277, 56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
