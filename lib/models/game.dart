import 'package:games_wishlist/models/category.dart';

enum Review{
  positive,
  neutral,
  negetive
}

enum Affordability{
  expensive,
  affordable,
  inexpensive
}

class Game{
  const Game({
    required this.id,
    required this.title,
    required this.imageURL,
    required this.price,
    required this.reviews,
    required this.affordability,
    required this.categories,
    required this.hasDLC,
    required this.isNSFW,
    required this.description
  });

  final String id;
  final String title;
  final String imageURL;
  final double price;
  final List<String> categories;
  final Review reviews;
  final Affordability affordability;
  final bool hasDLC;
  final bool isNSFW;
  final String description;
}