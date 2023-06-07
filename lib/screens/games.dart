import 'package:flutter/material.dart';
import 'package:games_wishlist/models/game.dart';
import 'package:games_wishlist/widgets/game_item.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key, required this.category, required this.games, required this.onToggleFavorite});

  final String category;
  final List<Game> games;
  final void Function(Game game) onToggleFavorite;


  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Text(
        'No games in this category',
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
      ),
    );

    if (games.isNotEmpty) {
      content = ListView.builder(
          itemCount: games.length,
          itemBuilder: ((context, index) => GameItem(game: games[index], onToggleFavorite: onToggleFavorite,)));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          category,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: content,
    );
  }
}
