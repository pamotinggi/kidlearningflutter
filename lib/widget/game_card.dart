import 'package:flutter/material.dart';
import 'package:kidlearningflutter/model/game_view.dart';

class GameCard extends StatelessWidget {
  late final game card;
  GameCard(this.card);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: double.infinity
      ),
      child: Card(
        shadowColor: Colors.purple,
        elevation: 8,
        child: ListTile(
          tileColor: Colors.blue,
          title: Text("Name : " + '${card.name}'),
          subtitle: Text("Score : " + '${card.score}'),
        ),
      ),
    );
  }
}
