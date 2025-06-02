import 'package:flutter_app1master/config/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



final bandsProvider = StateNotifierProvider<BandsNotifier, List<Band>>((ref){
  return BandsNotifier();
});

class BandsNotifier extends StateNotifier<List<Band>>{

  BandsNotifier():super([
    Band(id: '1', name: 'BB. King', numerusVotum: 4),
    Band(id: '2', name: 'Phillip Glass', numerusVotum: 1),
    Band(id: '3', name: 'Camarón', numerusVotum: 6),
    Band(id: '4', name: 'Zelia Duncan', numerusVotum: 2),
  ]);

  void addNewBand(Band band){
    state = [...state, band];
  }

  void removeBand(Band band){
    state = state.where((b) => b.id != band.id ).toList();
  }
  void addVote(Band band) {
    state = state.map((b){
      return b.id == band.id 
      ? b.copyWith(numerusVotum:b.numerusVotum + 1)
      : b;
    },).toList();
  }
}