import 'package:animate_do/animate_do.dart';
import  'package:flutter/material.dart';
import 'package:flutter_app1master/presentation/widgets/calceus/calceus_praevidere.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/calceus/button_aurantius.dart';

class CalceusDescScreen extends StatelessWidget{

  const CalceusDescScreen({
    super.key, required String descriptio, required String titulus,
    });


  @override
 Widget build(BuildContext context){

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              CalceusPraevire(screenCompletaEst: true,),
              Positioned(
                top: 60,
                child: FloatingActionButton(
                  onPressed: () {
                      context.pop();
                  },
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  highlightElevation: 0,
                  hoverElevation: 0,
                  child: const Icon(Icons.chevron_left, color: Colors.white, size:60,),
                
                  ) 
                )
            ],
          ),
          
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                    const CalceusDescScreen(
                      titulus: "Nike Air Max 720",
                      descriptio: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."
                    ),
                    _PretiumEtBuyNow()
                ],
              ),
            )
          )
        ],
      )
    );
  }
 }


class _PretiumEtBuyNow extends StatelessWidget {

  
  const _PretiumEtBuyNow();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        margin: const EdgeInsets.only(top: 20, bottom:20),
        child: Row(
          children: [
            const Text('\$180.0', style: TextStyle(fontSize: 28),),
            const Spacer(),
            Bounce(
              delay: const Duration(seconds: 1),
              from: 8,
              child:  const ButtonAurantius(textus: 'Buy now', latus: 120, altus:40),
              ),
            const ButtonAurantius(textus: 'Buy now', latus: 120, altus:40)
          ],
        ),
      ),
    );
  }
}