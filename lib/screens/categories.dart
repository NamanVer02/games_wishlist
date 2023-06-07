import 'package:flutter/material.dart';
import 'package:games_wishlist/data/dummy_data.dart';
import 'package:games_wishlist/models/category.dart';
import 'package:games_wishlist/models/game.dart';
import 'package:games_wishlist/screens/games.dart';
import 'package:games_wishlist/widgets/category_item.dart';
import 'package:games_wishlist/widgets/main_drawer.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, required this.onToggleFavorite, required this.onSelectScreen, required this.filteredGames, required this.selectedFavorites});
  final void Function(Game game) onToggleFavorite;
  final void Function(String id) onSelectScreen;
  final List<Game> selectedFavorites;
  final filteredGames;


  void _selectCategory(BuildContext context, Category category) {
    final gameList = filteredGames
        .where((game) {return game.categories.contains(category.id) as bool;})
        .toList();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) =>
            GamesScreen(category: category.title, games: gameList, onToggleFavorite: onToggleFavorite, selectedFavorites: selectedFavorites,),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      drawer: MainDrawer(onSelectScreen: onSelectScreen),
      body: GridView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 18,
        ),
        children: [
          for (final category in availableCategories)
            CategoryItem(
                category: category,
                onSelectCategory: () {
                  _selectCategory(context, category);
                })
        ],
      ),
    );
  }
}
