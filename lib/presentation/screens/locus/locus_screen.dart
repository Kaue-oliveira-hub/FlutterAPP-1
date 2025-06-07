import  'package:flutter/material.dart';
import 'package:flutter_app1master/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



        class LocusScreen extends ConsumerWidget{


          const LocusScreen
          ({
            super.key, 
          
            });

          @override
  Widget build(BuildContext context, WidgetRef ref) {

    final userLocusAsync = ref.watch(userLocusProvider);

    final vigiliaLocusAsync = ref.watch( vigiliaLocusProvider );
   return Scaffold(
    appBar: AppBar(
      title: Text('Localizacion'),
    ),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
       Column(
        spacing: 15,
          children: [
            Text('Localización', style: TextStyle(fontSize: 35, color: Colors.grey),),
            
            userLocusAsync.when(
              data: (data) =>Text('$data', style: TextStyle(fontSize: 25),),
              error:(error, stackTrace) => Text('$error'),
              loading: () => CircularProgressIndicator(),
            )
          ],
          ),
        Column(
          spacing: 15,
          children: [
            Text('Seguimiento', style: TextStyle(fontSize: 35, color: Colors.grey)),
            vigiliaLocusAsync.when(
              data: (data) =>Text('$data', style: TextStyle(fontSize: 25),),
              error:(error, stackTrace) => Text('$error'),
              loading: () => CircularProgressIndicator(),
             )
          ],
          )
    ],
  ),
    ),
   );

  }
        }