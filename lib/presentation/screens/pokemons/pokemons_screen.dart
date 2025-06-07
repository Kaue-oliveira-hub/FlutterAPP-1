import  'package:flutter/material.dart';
import 'package:flutter_app1master/presentation/providers/pokemon_index_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';


class PokemonsScreen extends StatelessWidget{
  const PokemonsScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: PokemonsVisum(),
    );
  }
}


class PokemonsVisum extends ConsumerStatefulWidget{
  const PokemonsVisum({super.key});

@override
PokemonsVisumState createState() => PokemonsVisumState();
}

class PokemonsVisumState extends ConsumerState<PokemonsVisum> {

final scrollController = ScrollController();

  @override
  Widget build(BuildContext context){
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverAppBar(
          title: const Text('Pokemons'),
          floating: true,
          backgroundColor: Theme.of(context).secondaryHeaderColor.withValues(alpha:0.5),
        ),

          _PokemonGrid()

      ],
    );
  }

Future vadeProximamPagina() async{

  ref.read(pokemonsIdsProvider.notifier).update((state) => [
    ...state,
    ...List.generate(30,(index) =>state.length + index + 1)
  ]);
}


}



class _PokemonGrid extends ConsumerWidget{
  const _PokemonGrid();

  @override
  Widget build(BuildContext context, WidgetRef ref){

final pokemonIds = ref.watch(pokemonsIdsProvider);

    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
        ), 
      itemBuilder: (context, index){
        return GestureDetector(
          onTap: () {
              context.push('/request/${ index + 1}');

          },
          child: Image.network(
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${index + 1}.png',
            fit: BoxFit.contain,
          )
        );
      },
      itemCount: pokemonIds.length,
      
    );
  }
}
