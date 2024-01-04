import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class main_text extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  main_text({super.key,
     this.color= Colors.black,
     this.size=20,
     required this.text,
   });

  @override


  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class SmallText extends StatelessWidget {

  double size;
  final String text;
  final Color color;

 SmallText({super.key,
 this.size=14,
   required this.text,
   this.color= Colors.black,
 });

  @override
  Widget build(BuildContext context) {
    return Text(text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}


class ProfileMainText extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  ProfileMainText({super.key,
    this.size=20,
    this.color=Colors.black,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}




