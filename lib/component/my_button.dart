import 'package:flutter/material.dart';
 class Mybutton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  Mybutton({super.key, 
  required this.onTap,
  required this.text});

  @override
  Widget build(BuildContext context) {

    return  GestureDetector(
      onTap:onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 50.0),
        decoration: BoxDecoration(color: Colors.black,
      borderRadius:BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
    style: TextStyle(color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20),
    ),
      ),
    ),
    );
    

    
  }
}