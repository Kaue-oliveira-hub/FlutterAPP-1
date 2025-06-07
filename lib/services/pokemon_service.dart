import 'package:dio/dio.dart';

class PokemonService {
  
  static getPokemon<String>(String pokemonId ) async {
      final dio = Dio();

      try{

        final responsio = await dio.get('https://pokeapi.co/api/v2/pokemon/$pokemonId');

      } catch (e){

        return (null, 'No se pudo obtener el pokemon');
      }



  }
}
