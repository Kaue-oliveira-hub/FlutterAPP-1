
import  'package:flutter/material.dart';
import 'package:flutter_app1master/presentation/providers/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class ThemeMutanteScreen extends ConsumerWidget {
  const ThemeMutanteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final estTenebrisModus = ref.watch(estTenebrisModusProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Mutante'),
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
      
    );
  }
}
