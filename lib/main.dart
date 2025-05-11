import 'package:flutter/material.dart';
import 'package:flutter_app1master/config/config.dart';
import 'package:flutter_app1master/presentation/screens/screens.dart';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(electusColor:2).getTheme(),
      home: DomusScreen()
    );
  }
}
