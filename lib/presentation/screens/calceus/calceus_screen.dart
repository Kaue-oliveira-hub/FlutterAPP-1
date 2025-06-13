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

             Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children:[
                     const Hero(
                      tag: 'zapato-1',
                      child: CalceusPraevire()),
                     const CalceusDescriptio(
                       titulus: 'Nike air Max 720',
                      descriptio: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.", 
                     ),
                    ] 
                 ),
              )         
           ),

            const AdCarrumButtom(pretium: 180.0)

        ]
        ,)
      );
 }
}