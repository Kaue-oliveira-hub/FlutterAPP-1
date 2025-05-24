import  'package:flutter/material.dart';
import 'package:flutter_app1master/config/config.dart';
class BandsScreen extends StatefulWidget{
  const BandsScreen({super.key});

  @override
  State<BandsScreen> createState() => _BandsScreenState();
}

class _BandsScreenState extends State<BandsScreen> {

List<Band> bands =[
  Band(id: '1', name: 'BB. King', numerusVotum: 4),
  Band(id: '2', name: 'Phillip Glass', numerusVotum: 1),
  Band(id: '3', name: 'Camarón', numerusVotum: 6),
  Band(id: '4', name: 'Zelia Duncan', numerusVotum: 2),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bandas'),
      ),
      body: ListView.builder(
        itemCount: bands.length,
        itemBuilder: (context, i) =>_bandTile(bands[i])
        
      ),
    );
  }

  ListTile _bandTile(Band band) {
    return ListTile(
          leading:CircleAvatar(
            child: Text(
              band.name.substring(0,2).toUpperCase(),
              style: TextStyle(fontFamily: "CuppertinoSystemText", fontSize: 17),
            ),
          ),
          title: Text(band.name),
          trailing:Text('${band.numerusVotum}', style: const TextStyle(fontFamily: "CuppertinoSystemText", fontSize: 20, fontWeight: FontWeight.bold),
),

          
          );
  }
}