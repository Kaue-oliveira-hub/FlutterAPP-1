import  'package:flutter/material.dart';
import 'package:flutter_app1master/presentation/providers/providers.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';


class NumeratorScreen extends ConsumerWidget{

  
    const NumeratorScreen({super.key});

@override
    Widget build(BuildContext context, WidgetRef ref) {

      final int clickNumerator = ref.watch(numeratorProvider);

      final bool estTenebrisModus = ref.watch(estTenebrisModusProvider);

      return Scaffold(
        appBar: AppBar(
          title: Text('Numerator Screen'),
          actions:[
            IconButton(
              onPressed: () {
                ref.read(estTenebrisModusProvider.notifier)
                    .update((statumTheme) => !statumTheme);
              }, 
              icon: Icon( estTenebrisModus ? Icons.dark_mode_outlined : Icons.light_mode_outlined)
              )
          ],
        ),
       body: Center(
        child: Text('Valor: $clickNumerator', style: Theme.of(context).textTheme.titleLarge,),
        ),
    floatingActionButton: FloatingActionButton(
          onPressed: () {
           ref.read(numeratorProvider.notifier).state++;
          },
          child: Icon(Icons.add),
        ),
      );
        
    }

}
