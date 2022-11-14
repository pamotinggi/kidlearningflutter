class score{
  String? name;
  String? uid;
  String? sco;

  score({this.name, this.uid, this.sco});

  factory score.fromMap(map){
    return score(
      name: map['name'],
      sco: map['sco'],
    );
  }
  Map<String, dynamic> toMap(){
    return{
      'name':name,
      'sco':sco,
    };
  }
}