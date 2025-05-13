import  'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

    appBarTheme: AppBarTheme(
    
      centerTitle: false,
      elevation:2,
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      ),
     textTheme: TextTheme(
    titleLarge: GoogleFonts.lato(),
    titleMedium: GoogleFonts.lato(fontSize: 35),
    bodyLarge: GoogleFonts.lato(fontSize: 20),
    bodyMedium: GoogleFonts.russoOne(fontSize: 15),
  ),
);


}

