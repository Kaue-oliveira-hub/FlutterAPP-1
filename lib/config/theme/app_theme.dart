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
  );


}

