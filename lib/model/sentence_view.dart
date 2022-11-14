class senview {
  String? name;
  String? score;

  senview();

  Map<String, dynamic> toJson() => {
        'name': name,
        'score': score,
      };

  senview.fromSnapshot(snapshot)
      : name = snapshot.data()['name'],
        score = snapshot.data()['score'];
}

class senvieww {
  String? name;
  String? score;

  senvieww();

  Map<String, dynamic> toJson() => {
        'name': name,
        'score': score,
      };

  senvieww.fromSnapshot(snapshot)
      : name = snapshot.data()['name'],
        score = snapshot.data()['score'];
}
