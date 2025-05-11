import  'package:flutter/material.dart';

const colorum = <Color>[
  Colors.greenAccent, // Dark Gray
  Colors.teal, 
  Colors.red, 
  Colors.black, 
  Colors.white30, 
  Colors.yellow, 
  Colors.pink, 
  Colors.pinkAccent, 
];

class AppTheme {
 final int electusColor;

AppTheme({this.electusColor = 0});

ThemeData getTheme() => ThemeData(
    colorSchemeSeed: colorum[electusColor],

    appBarTheme: const AppBarTheme(
    
      centerTitle: false,
      elevation:2,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),

  );


}

