import 'package:flutter/cupertino.dart';
import  'package:flutter/material.dart';
import 'package:flutter_app1master/config/config.dart';
import 'package:flutter_app1master/presentation/providers/provider_socket.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class BandsScreen extends ConsumerWidget {
  
  const BandsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final bands = ref.watch(bandsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bandas'),
      ),
      body: ListView.builder(
        itemCount: bands.length,
        itemBuilder: (context, i) =>_bandTile(context, ref, bands[i])  
      ),
 floatingActionButton: FloatingActionButton(
        onPressed: () => addNewBand(context, ref),
        elevation: 1,
        child: const Icon(Icons.add),
      ),
    );
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
