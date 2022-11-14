class game {
  String? name;
  String? score;

  game();

  Map<String, dynamic> toJson() => {
        'name': name,
        'score': score,
      };

  game.fromSnapshot(snapshot)
      : name = snapshot.data()['name'],
        score = snapshot.data()['score'];
}
