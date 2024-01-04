import 'package:flutter/material.dart';


class AddressProfile extends StatefulWidget {
  const AddressProfile({super.key});

  @override
  State<AddressProfile> createState() => _AddressProfileState();
}

class _AddressProfileState extends State<AddressProfile> {

  TextEditingController AddressLine1=TextEditingController();
  TextEditingController AddressLine2=TextEditingController();
  TextEditingController City=TextEditingController();
  TextEditingController State=TextEditingController();
  TextEditingController Pincode=TextEditingController();

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
            'Address',
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
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              width: 375,
              height: 91,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 20),
                child: Column(
                  children: [
                    SizedBox(
                      width: 360,
                      child: Text(
                          'Current Location',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                    ),
                      SizedBox(
                        width: 360,
                        child: Text(
                          'Delivering to: Kakkanad, 682030',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),

          //NextSection
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Container(
              width: 380,
              height: 323,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16,left: 20),
                    child: SizedBox(
                      width: 360,
                      child: Text(
                        'Current Location',
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
                    padding: const EdgeInsets.only(
                      top: 8,
                      left: 20.0,
                      right: 20,
                    ),
                    child: SizedBox(
                      width: 346,
                      height: 56,
                      child: SizedBox(
                        height: 56,
                        child: TextFormField(
                          controller: AddressLine1,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(16.0),
                                  borderSide: BorderSide(
                                    color: Color(0xFF4F7B39),
                                    width: 12.0,
                                  )
                              ),
                              labelText: 'Address Line1',
                              labelStyle: TextStyle(
                                color: Colors.black38,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,)
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                      left: 20.0,
                      right: 20,
                    ),
                    child: SizedBox(
                      width: 346,
                      height: 56,
                      child: TextFormField(
                        controller: AddressLine2,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:BorderRadius.circular(16.0),
                                borderSide: BorderSide(
                                  color: Color(0xFF4F7B39),
                                  width: 12.0,
                                )
                            ),
                            labelText: 'Address Line2',
                            labelStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,)
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                      left: 20.0,
                      right: 20,
                    ),
                    child: SizedBox(
                      width: 346,
                      height: 56,
                      child: SizedBox(
                        height: 56,
                        child: TextFormField(
                          controller: City,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(16.0),
                                  borderSide: BorderSide(
                                    color: Color(0xFF4F7B39),
                                    width: 12.0,
                                  )
                              ),
                              suffixIcon: Icon(Icons.arrow_drop_down_sharp),
                              labelText: 'City',
                              labelStyle: TextStyle(
                                color: Colors.black38,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,)
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16,
                            left: 20,
                        ),
                        child: SizedBox(
                          width: 159,
                          height: 56,
                          child: TextFormField(
                            controller: State,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:BorderRadius.circular(16.0),
                                    borderSide: BorderSide(
                                      color: Color(0xFF4F7B39),
                                      width: 12.0,
                                    )
                                ),
                                suffixIcon: Icon(Icons.arrow_drop_down_sharp),
                                labelText: 'State',
                                labelStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,)
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                          top: 16,
                        ),
                        child: SizedBox(
                          width: 159,
                          height: 56,
                          child: TextFormField(
                            controller: Pincode,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:BorderRadius.circular(16.0),
                                    borderSide: BorderSide(
                                      color: Color(0xFF4F7B39),
                                      width: 12.0,
                                    )
                                ),
                                labelText: 'Zipcode',
                                labelStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),


    );
  }
}
