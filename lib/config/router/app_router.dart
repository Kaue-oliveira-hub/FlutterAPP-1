
import 'package:flutter_app1master/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
GoRoute(
  path: '/',
  builder:(context, state) => const DomusScreen(),
  ),
  GoRoute(
  path: '/numerator-river',
  builder:(context, state) => const NumeratorScreen(),
  ),

   GoRoute(
  path: '/videos',
  builder:(context, state) => const VideoScreen(),
  ),
  ]
  );