import 'package:flutter/material.dart';

enum Filter { nsfw, dlc, affordable, review }

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key, required this.currentFilters});

  final Map<Filter, bool> currentFilters;

  @override
  State<FilterScreen> createState() {
    return _FilterScreenState();
  }
}

class _FilterScreenState extends State<FilterScreen> {
  var nsfw = false;
  var dlc = false;
  var affordable = false;
  var review = false;

  @override
  void initState() {
    super.initState();
    nsfw = widget.currentFilters[Filter.nsfw]!;
    dlc = widget.currentFilters[Filter.dlc]!;
    affordable = widget.currentFilters[Filter.affordable]!;
    review = widget.currentFilters[Filter.review]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Filters',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop({
            Filter.nsfw: nsfw,
            Filter.dlc: dlc,
            Filter.affordable: affordable,
            Filter.review: review
          });
          return false;
        },
        child: Column(
          children: [
            SwitchListTile(
              value: nsfw,
              onChanged: (toggled) {
                setState(() {
                  nsfw = toggled;
                });
              },
              title: Text('NSFW'),
              subtitle: Text('Disable NSFW games', style: Theme.of(context).textTheme.bodyMedium,),
              secondary: Icon(Icons.no_adult_content),
            ),
            SwitchListTile(
              value: dlc,
              onChanged: (toggled) {
                setState(() {
                  dlc = toggled;
                });
              },
              title: Text('DLC'),
              subtitle: Text("Disable games with DLC's", style: Theme.of(context).textTheme.bodyMedium,),
              secondary: Icon(Icons.monetization_on),
            ),
            SwitchListTile(
              value: affordable,
              onChanged: (toggled) {
                setState(() {
                  affordable = toggled;
                });
              },
              title: Text('Affordable'),
              subtitle: Text('Show games that are affordable', style: Theme.of(context).textTheme.bodyMedium,),
              secondary: Icon(Icons.attach_money),
            ),
            SwitchListTile(
              value: review,
              onChanged: (toggled) {
                setState(() {
                  review = toggled;
                });
              },
              title: Text('Good Reviews'),
              subtitle: Text("Show games with good reviews only", style: Theme.of(context).textTheme.bodyMedium,),
              secondary: Icon(Icons.reviews),
            ),
          ],
        ),
      ),
    );
  }
}
