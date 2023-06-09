import 'package:flutter/material.dart';
import 'package:games_wishlist/data/dummy_data.dart';
import 'package:games_wishlist/models/game.dart';
import 'package:games_wishlist/screens/game_details.dart';
import 'package:games_wishlist/widgets/game_item_traits.dart';
import 'package:transparent_image/transparent_image.dart';

class GameItem extends StatelessWidget {
  const GameItem(
      {super.key,
      required this.game,
      required this.onToggleFavorite,
      required this.selectedFavorites});

  final Game game;
  final void Function(Game game) onToggleFavorite;
  final List<Game> selectedFavorites;

  @override
  Widget build(BuildContext context) {
    List<Game> sameGames() {
      final List<Game> gameList = [];
      for (final element in availableGames) {
        for (final category in game.categories) {
          if (element.categories.contains(category) && element != game) {
            gameList.add(element);
          }
        }
      }
      gameList.shuffle();
      return gameList.toSet().toList();
    }

    return SizedBox(
      height: 210,
      width: MediaQuery.of(context).size.width - 20,
      child: Card(
        elevation: 10,
        margin: const EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => GameDetailsScreen(
                    game: game,
                    onToggleFavorite: onToggleFavorite,
                    selectedFavorites: selectedFavorites,
                    sameGames: sameGames()),
              ),
            );
          },
          child: Stack(
            children: [
              FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(game.imageURL),
                fit: BoxFit.cover,
                width: double.infinity,
                height: 180,
              ),
              Positioned(
                bottom: 0,
                top: 0,
                right: 0,
                child: Opacity(
                  opacity: 0.8,
                  child: Container(
                    decoration: const BoxDecoration(
                      // borderRadius: BorderRadius.only(
                      //   bottomLeft: Radius.circular(16),
                      //   topLeft: Radius.circular(16),
                      // ),

                      gradient: LinearGradient(colors: [
                        Colors.black45,
                        Colors.black,
                      ]),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: GameItemTrait(game: game),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
