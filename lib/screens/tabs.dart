import 'package:flutter/material.dart';
import 'package:games_wishlist/data/dummy_data.dart';
import 'package:games_wishlist/models/game.dart';
import 'package:games_wishlist/screens/categories.dart';
import 'package:games_wishlist/screens/filters.dart';
import 'package:games_wishlist/screens/games.dart';
import 'package:shared_preferences/shared_preferences.dart';

const kInitialFilters = {
  Filter.dlc: false,
  Filter.nsfw: false,
  Filter.affordable: false,
  Filter.review: false,
};

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TabScreenState();
  }
}

class _TabScreenState extends State<TabScreen> {
  int selectedPage = 0;
  final List<Game> selectedFavorites = [];
  Map<Filter, bool> selectedFilters = kInitialFilters;

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  void toggleFavoriteStatus(Game game) {
    final isIn = selectedFavorites.contains(game);
    setState(() {
      if (isIn) {
        selectedFavorites.remove(game);
        showSnackBar('Game removed from Favorites');
      } else {
        selectedFavorites.add(game);
        showSnackBar('Game added to Favorites');
      }
    });
  }

  void setScreen(String id) async {
    Navigator.of(context).pop();
    if (id == 'filters') {
      final result = await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(
          builder: (context) => FilterScreen(
            currentFilters: selectedFilters,
          ),
        ),
      );
      setState(() {
        selectedFilters = result ?? kInitialFilters;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final filteredGames = availableGames.where((game) {
      if (selectedFilters[Filter.nsfw]! && game.isNSFW) {
        return false;
      }
      if (selectedFilters[Filter.dlc]! && game.hasDLC) {
        return false;
      }
      if (selectedFilters[Filter.affordable]! &&
          game.affordability != Affordability.affordable) {
        return false;
      }
      if (selectedFilters[Filter.review]! && game.reviews != Review.positive) {
        return false;
      }
      return true;
    }).toList();

    Widget activePage = CategoriesScreen(
      onToggleFavorite: toggleFavoriteStatus,
      onSelectScreen: setScreen,
      filteredGames: filteredGames,
      selectedFavorites: selectedFavorites,
    );
    String activePageTitle = 'Categories';

    void selectPage(int index) {
      setState(() {
        selectedPage = index; 
      });
    }

    if (selectedPage == 1) {
      activePage = GamesScreen(
        category: 'Favorites',
        games: selectedFavorites,
        onToggleFavorite: toggleFavoriteStatus,
        selectedFavorites: selectedFavorites,
      );
      activePageTitle = 'Your Favorites';
    } else if (selectedPage == 0) {
      activePage = CategoriesScreen(
        onToggleFavorite: toggleFavoriteStatus,
        onSelectScreen: setScreen,
        filteredGames: filteredGames,
        selectedFavorites: selectedFavorites,
      );
    }

    return Scaffold(
      // appBar: AppBar(
      //   title: Text(activePageTitle),
      // ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          selectPage(index);
        },
        currentIndex: selectedPage,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
        ],
      ),
    );
  }
}
