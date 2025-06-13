import  'package:flutter/material.dart';
import 'package:flutter_app1master/presentation/widgets/calceus/button_aurantius.dart';



class AdCarrumButtom extends StatelessWidget{

  final double pretium;

  const AdCarrumButtom({
    super.key,
    required this.pretium
    });


  @override
 Widget build(BuildContext context){

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
      width: double.infinity,
      height: 100,
        decoration: BoxDecoration(
          color: Colors.grey.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(100)
          ),
          child: Row(
            children: [  
              const SizedBox( width: 20,),       
              Text('\$$pretium', 
          style:  TextStyle(fontSize: 28), ),
          const Spacer(),
          const  ButtonAurantius(textus: 'Add to cart'),
          const SizedBox( width: 20,),
          ],
          ),       
      ),
    );
 }
}




