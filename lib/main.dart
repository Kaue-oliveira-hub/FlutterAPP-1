import 'package:flutter/material.dart';
import 'package:flutter_app1master/config/config.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(electusColor:0).getTheme(),
      home: Scaffold(
        appBar:AppBar(
          
          title: Text('Home Page'),

        ),
        body: Center(
          child: FilledButton(
            onPressed: (){ }, 
            child: Text('Hello World!')
            ),
        ),
      ),
    );
  }
}
