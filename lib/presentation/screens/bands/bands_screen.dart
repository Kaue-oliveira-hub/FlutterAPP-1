import 'package:flutter/cupertino.dart';
import  'package:flutter/material.dart';
import 'package:flutter_app1master/config/config.dart';
import 'package:flutter_app1master/presentation/providers/provider_socket.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pie_chart/pie_chart.dart';



class BandsScreen extends ConsumerWidget {
  
  const BandsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final bands = ref.watch(bandsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bandas'),
      ),
      body: Column(
        children: [
          _videreData( bands),
          SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
              itemCount: bands.length,
              itemBuilder: (context, i) =>_bandTile(context, ref, bands[i])  
            ),
          ),
        ],
      ),
 floatingActionButton: Visibility(
  visible: bands.length < 7 ? true : false,
   child: FloatingActionButton(
          onPressed: () => addNewBand(context, ref),
          elevation: 1,
          child: const Icon(Icons.add),
        ),
 ),
    );
  }
 
 
Widget _videreData( List<Band> bands ) {

    // ignore: prefer_collection_literals
    Map<String, double> dataMap = Map(); 

    for (var band in bands) { 
      dataMap.putIfAbsent(band.name, () => band.numerusVotum.toDouble() );
    }

    final List<Color> colorList = [
      Colors.pink.shade100,
      Colors.pink.shade300,
      Colors.blue.shade200,
      Colors.blue.shade600,
      Colors.lightGreen.shade200,
      Colors.lightGreen.shade600,
    ];
  
    return dataMap.isNotEmpty ? Container(
      padding: const EdgeInsets.only(left: 5, top: 5),
      width: double.infinity,
      height: 200.0,
      child: PieChart(
        dataMap: dataMap,
        animationDuration: const Duration(milliseconds: 800),
        colorList: colorList,
        chartType: ChartType.ring,
        legendOptions: const LegendOptions(
          showLegendsInRow: false,
          legendPosition: LegendPosition.right,
          showLegends: true,
          legendTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "CupertinoSystemText", fontSize: 17,
          ),
        ),
        chartValuesOptions: ChartValuesOptions(
          showChartValues: dataMap.length <= 6, // con más de 6 no se ve el valor
          showChartValueBackground: true,
          showChartValuesInPercentage: false,
          showChartValuesOutside: false,
        ),
      ),
    ) : const LinearProgressIndicator();
  }


  Widget _bandTile(BuildContext context, WidgetRef ref, Band band) {
    return Dismissible(
      key: Key(band.id),
      direction: DismissDirection.startToEnd,
      onDismissed: ( direction ){
        ref.read(bandsProvider.notifier).removeBand(band);
      },
      child: ListTile(
            leading:CircleAvatar(
              child: Text(
                band.name.substring(0,2).toUpperCase(),
                style: TextStyle(fontFamily: "CuppertinoSystemText", fontSize: 17),
              ),
            ),
            title: Text(band.name),
            trailing: Text(
              '${band.numerusVotum}',
              style: const TextStyle(
                fontFamily: "CuppertinoSystemText",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              band.numerusVotum++;
              ref.read(bandsProvider.notifier).addVote(band);
            },
      ),
    );
  }
  addNewBand(BuildContext context, WidgetRef ref){
    final TextEditingController textController = TextEditingController();

    /*
    showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
          title: const Text('New band name'),
          content: TextField( controller: textController,),
          actions: [
            MaterialButton(
              elevation: 5,
              textColor: Colors.blue,
              child: const Text('Add'),
              onPressed: () => addCollection(textController.text)
            )
          ],
        );
      
      }
    );
    */
showCupertinoDialog(
      context: context, 
      builder: ( BuildContext context ) => CupertinoAlertDialog(
        title: const Text('New band name'),
        content:  CupertinoTextField(
          controller: textController,
          style: TextStyle(
            color: Theme.of(context).brightness == Brightness.dark 
              ? Colors.white 
              : Colors.black
            )
        ),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            child: const Text('Add'),
            onPressed: () {
              addCollection(context, ref, textController.text);
            }
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            child: const Text('Close'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      )
    );


}

void addCollection( BuildContext context, WidgetRef ref, String name){
  if (name.length > 2 ){
    ref.read(bandsProvider.notifier).addNewBand(
   Band(
    id: DateTime.now().toString(),
    name: name,
    numerusVotum: 0,
   )
 );
}
  Navigator.pop(context);

}

}
