import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectScreen});
  
  final void Function(String id) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(9, 198, 249, 1),
                  Color.fromRGBO(4, 93, 233, 1),
                ],
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Greetings\nGAMER',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 30,
                      ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.gamepad,
              size: 20,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text(
              'Games',
              style: Theme.of(context).textTheme.titleMedium
            ),
            onTap: () {onSelectScreen('games');},
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 20,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text(
              'Filters',
              style: Theme.of(context).textTheme.titleMedium
            ),
            onTap: () {onSelectScreen('filters');},
          )
        ],
      ),
    );
  }
}
