import 'package:flutter/material.dart';
import 'package:flutter_app1master/config/config.dart';
import 'package:flutter_app1master/presentation/providers/theme_provider.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';



void main() {
  runApp(
  const ProviderScope(
child: MainApp(),
  )
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

     final bool tenebrisModusEst = ref.watch(estTenebrisModusProvider);

    return  MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(electusColor:0, tenebrisMudusEst: tenebrisModusEst).getTheme(),
      
    );
  }
}
