import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  State<FilterScreen> createState() {
    return _FilterScreenState();
  }
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    var nsfw = false;



    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Filters',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: nsfw,
            onChanged: (toggled) {
              setState(() {
                nsfw = toggled;
              });
            },
            title: Text('NSFW'),
            subtitle: Text('Allow NSFW games'),
          ),
        ],
      ),
    );
  }
}
