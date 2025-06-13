import  'package:flutter/material.dart';



class CalceusPraevire extends StatelessWidget{

  const CalceusPraevire ({super.key});


  @override
 Widget build(BuildContext context){

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      
      child: Container(
        width: double.infinity, 
        height: 440,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 207, 83),
          borderRadius:  BorderRadius.circular(50)
        ),
          child: Column(
            children: [
              _CalceusCumUmbra()
            ],
          )
        ),
    );
 }
}


class _CalceusCumUmbra extends StatelessWidget{

  const _CalceusCumUmbra ();


  @override
 Widget build(BuildContext context){
      
      return Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Stack(
          children: [
            Positioned(
              bottom: 10,
              right: 0,
              child: const _UmbraProjecta(),
              ),
            Image(image: AssetImage('assets/imagines/azul.png'), width: 320, height: 320, fit: BoxFit.cover)
          ],
        ),
      );
 }
}

class _UmbraProjecta extends StatelessWidget{

  const _UmbraProjecta ();


  @override
 Widget build(BuildContext context){
      
      return Transform.rotate(
        angle: -0.5,
        child: Container(
          width: 230,
          height:120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: const[
              BoxShadow(color: Color.fromARGB(254, 234, 161, 78),blurRadius: 40)
            ]
          ),
        ),
      );

 }
}