import 'package:flutter/material.dart';
import 'package:games_wishlist/models/game.dart';
import 'package:games_wishlist/widgets/game_item.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen(
      {super.key,
      required this.category,
      required this.games,
      required this.onToggleFavorite,
      required this.selectedFavorites});

  final String category;
  final List<Game> games;
  final void Function(Game game) onToggleFavorite;
  final List<Game> selectedFavorites;

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Opacity(opacity: 0.5, child: Image.asset('assets/images/empty.png')),
          const SizedBox(height: 20,),
          Opacity(
            opacity: 0.7,
            child: Text(
              'No game found here',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );

    if (games.isNotEmpty) {
      content = ListView.builder(
          itemCount: games.length,
          itemBuilder: ((context, index) => GameItem(
                game: games[index],
                onToggleFavorite: onToggleFavorite,
                selectedFavorites: selectedFavorites,
              )));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          category,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: content,
    );
  }
}
