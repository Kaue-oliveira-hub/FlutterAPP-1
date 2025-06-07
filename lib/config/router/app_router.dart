
import 'package:flutter/cupertino.dart';
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

     GoRoute(
  path: '/bands',
  builder:(context, state) => const BandsScreen(),
  ),

      GoRoute(
  path: '/sensors',
  builder:(context, state) => const SensoresScreen(),
  ),

        GoRoute(
  path: '/gyroscope',
  builder:(context, state) => const GyroscopeSphereScreen(),
  ),
          GoRoute(
  path: '/location',
  builder:(context, state) => const LocusScreen(),
  ),

          GoRoute(
  path: '/request',
  builder:(context, state) => const PokemonsScreen(),
  routes:[
    GoRoute(
      path: ':id',
      builder: (context, state){
        final id = state.pathParameters['id']?? '1';
        return PokemonScreen(pokemonId: ,);
      }
    ),
  ]
  ),


  ]
  );