import 'package:flutter/material.dart';
import 'package:games_wishlist/data/dummy_data.dart';
import 'package:games_wishlist/models/category.dart';
import 'package:games_wishlist/models/game.dart';
import 'package:games_wishlist/screens/games.dart';
import 'package:games_wishlist/widgets/category_item.dart';
import 'package:games_wishlist/widgets/main_drawer.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, required this.onToggleFavorite, required this.onSelectScreen});
  final void Function(Game game) onToggleFavorite;
  final void Function(String id) onSelectScreen;


  void _selectCategory(BuildContext context, Category category) {
    final gameList = availableGames
        .where((game) => game.categories.contains(category.id))
        .toList();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) =>
            GamesScreen(category: category.title, games: gameList, onToggleFavorite: onToggleFavorite,),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      drawer: MainDrawer(onSelectScreen: onSelectScreen),
      body: GridView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
