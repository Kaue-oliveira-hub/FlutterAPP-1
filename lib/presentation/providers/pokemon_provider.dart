

import 'package:flutter_app1master/config/entities/pokemon.dart';
import 'package:flutter_app1master/services/pokemon_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pokemonProvider = FutureProvider.family<Pokemon, String>((ref, id) async {
  final (pokemon, error) = await PokemonService.getPokemon( id );

  if (pokemon != null ) return pokemon;
  throw error;
  
});