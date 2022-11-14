class gameScore{
  String? name;
  String? uid;
  String? gSco;

  gameScore({
    this.uid,
    this.name,
    this.gSco,
});
  factory gameScore.fromMap(map){
    return gameScore(
      name: map['name'],
      gSco: map['gSco'],
    );
  }
  Map<String,dynamic> toMap(){
    return{
      'name':name,
      'gSco': gSco,
    };
  }
}