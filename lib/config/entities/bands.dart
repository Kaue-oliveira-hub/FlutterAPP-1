

class Band {
  String id;
  String name;
  int numerusVotum;

  Band({
required this.id,
required this.name,
required this.numerusVotum,
  });

factory Band.fromMap(Map<String, dynamic> obj) => Band(
   id: obj['id'],
   name: obj['name'],
   numerusVotum: obj['numerusVotum'] 
);


Band copyWith({
  String? id,
  String? name,
  int? numerusVotum
}){
   return Band(
   id: id?? this.id,
   name: name ?? this.name,
   numerusVotum: numerusVotum ?? this.numerusVotum,
   );
}
}