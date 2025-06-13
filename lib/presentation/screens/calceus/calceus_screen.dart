import  'package:flutter/material.dart';
import 'package:flutter_app1master/presentation/widgets/calceus/propium_appbar.dart';
import 'package:flutter_app1master/presentation/widgets/widgets.dart';





class CalceusScreen extends StatelessWidget{

  const CalceusScreen ({super.key});


  @override
 Widget build(BuildContext context){

    return Scaffold(
      body: Column(
        children: [
             PropiumAppbar(textus: 'For you',),
             const SizedBox(height:20),
             CalceusPraevire()
             
        ],
      )
      );
 }
}