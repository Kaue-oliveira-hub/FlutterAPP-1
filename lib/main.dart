import 'package:flutter/material.dart';
import 'package:flutter_app1master/config/config.dart';
import 'package:flutter_app1master/presentation/screens/screens.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



void main() {
  runApp(
  const ProviderScope(
child: MainApp(),
  )
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    

    return  MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(electusColor:0).getTheme(),
      
    );
  }
}
