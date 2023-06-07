import 'package:flutter/material.dart';
import 'package:games_wishlist/data/dummy_data.dart';
import 'package:games_wishlist/models/category.dart';
import 'package:games_wishlist/models/game.dart';
import 'package:transparent_image/transparent_image.dart';

class GameDetailsScreen extends StatefulWidget {
  const GameDetailsScreen(
      {super.key,
      required this.game,
      required this.onToggleFavorite,
      required this.selectedFavorites});

  final Game game;
  final void Function(Game game) onToggleFavorite;
  final List<Game> selectedFavorites;

  @override
  State<GameDetailsScreen> createState() => _GameDetailsScreenState();
}

class _GameDetailsScreenState extends State<GameDetailsScreen> {
  var isFavorite = false;
  final List<Category> gameCategories = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      if (widget.selectedFavorites.contains(widget.game)) {
        isFavorite = true;
      } else {
        isFavorite = false;
      }
    });
    for (final category in availableCategories) {
      if (widget.game.categories.contains(category.id)) {
        gameCategories.add(category);
      }
    }
    ;
  }

  void checkFavorite(Game game) {
    setState(() {
      if (widget.selectedFavorites.contains(game)) {
        isFavorite = true;
      } else {
        isFavorite = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.game.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          IconButton(
            onPressed: () {
              widget.onToggleFavorite(widget.game);
              checkFavorite(widget.game);
            },
            icon: (isFavorite)
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              //padding: const EdgeInsets.all(10),
              child: ClipRRect(
                //borderRadius: const BorderRadius.all(Radius.circular(16),),
                child: FadeInImage(
                  placeholder: MemoryImage(kTransparentImage),
                  image: NetworkImage(widget.game.imageURL),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                    color: (widget.game.hasDLC)
                        ? Colors.green.withOpacity(0.7)
                        : Colors.red,
                  ),
                  child: Text('DLC',
                      style: Theme.of(context).textTheme.titleSmall),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                    color: (widget.game.isNSFW)
                        ? Colors.green.withOpacity(0.7)
                        : Colors.red,
                  ),
                  child: Text('NSFW',
                      style: Theme.of(context).textTheme.titleSmall),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(Icons.currency_rupee),
                      Text((widget.game.price.toInt()).toString(),
                          style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    widget.game.description,
                  ),
                ),
                const SizedBox(width: 20,),
                Column(
                  children: [
                    for (final category in gameCategories)
                      Container(
                        width: 80,
                        height: 25,
                        margin: const EdgeInsets.symmetric(vertical: 3),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(6)),
                          color: Theme.of(context)
                              .colorScheme
                              .onPrimary
                              .withOpacity(0.6),
                        ),
                        child: Center(
                          child: Text(category.title,
                          textAlign: TextAlign.justify,
                              style: Theme.of(context).textTheme.bodyMedium),
                              
                        ),
                      ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
