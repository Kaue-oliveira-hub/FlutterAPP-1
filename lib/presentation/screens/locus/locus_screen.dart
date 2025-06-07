import  'package:flutter/material.dart';



        class LocusScreen extends StatelessWidget{


          const LocusScreen
          ({
            super.key, 
          
            });

          @override
  Widget build(BuildContext context) {

   return Scaffold(
    appBar: AppBar(
      title: Text('Localizacion'),
    ),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
       Column(
          children: [
            Text('Localización', style: TextStyle(fontSize: 35, color: Colors.grey),)
          ],
          ),
        Column(
          children: [
            Text('Seguimiento', style: TextStyle(fontSize: 35, color: Colors.grey),)
          ],
          )
    ],
  ),
    ),
   );

  }
        }