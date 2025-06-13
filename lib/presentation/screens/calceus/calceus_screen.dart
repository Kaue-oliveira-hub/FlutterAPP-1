import  'package:flutter/material.dart';
import 'package:flutter_app1master/presentation/widgets/calceus/propium_appbar.dart';





class CalceusScreen extends StatelessWidget{

  const CalceusScreen ({super.key});


  @override
 Widget build(BuildContext context){

    return Scaffold(
      body: PropiumAppbar(textus: 'For you',),
      );
 }
}