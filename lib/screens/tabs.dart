import 'package:flutter/material.dart';
import 'package:games_wishlist/models/game.dart';
import 'package:games_wishlist/screens/categories.dart';
import 'package:games_wishlist/screens/filters.dart';
import 'package:games_wishlist/screens/games.dart';
import 'package:games_wishlist/widgets/main_drawer.dart';

class TabScreen extends StatefulWidget{
  const TabScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TabScreenState();
  }
}

class _TabScreenState extends State<TabScreen>{
  int selectedPage = 0;
  final List<Game> selectedFavorites = [];

  void showSnackBar(String message){
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  void toggleFavoriteStatus(Game game){
    final isIn = selectedFavorites.contains(game);
    setState(() {
      if(isIn){
        selectedFavorites.remove(game);
        showSnackBar('Game removed from Favorites');
      }
      else{
        selectedFavorites.add(game);
        showSnackBar('Game added to Favorites');
      }
    });
  }

  void setScreen(String id){
    if(id == 'filters'){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FilterScreen()));
    }
    else{
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = CategoriesScreen(onToggleFavorite: toggleFavoriteStatus, onSelectScreen: setScreen,);
    String activePageTitle = 'Categories';
    void selectPage(int index){
      setState(() {
        selectedPage = index;
      });
    }

    if(selectedPage == 1){
      activePage = GamesScreen(category: 'Favorites', games: selectedFavorites, onToggleFavorite: toggleFavoriteStatus,);
      activePageTitle = 'Your Favorites';
    }
    else if(selectedPage == 0){
      activePage = CategoriesScreen(onToggleFavorite: toggleFavoriteStatus, onSelectScreen: setScreen,);
    }

    return Scaffold(
      // appBar: AppBar(
      //   title: Text(activePageTitle),
      // ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){selectPage(index);},
        currentIndex: selectedPage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.gamepad), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
        ],
      ),
    );
  }
}