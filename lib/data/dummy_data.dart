import 'package:games_wishlist/models/category.dart';
import 'package:flutter/material.dart';
import 'package:games_wishlist/models/game.dart';

var availableCategories = [
  Category(
      id: 'c1',
      title: 'Action',
      color: Colors.red,
      icon: Icons.sports_martial_arts,
      imageURL:
          'https://store.steampowered.com/categories/homepageimage/category/action?cc=us&l=english'),
  Category(
      id: 'c2',
      title: 'Adventure',
      color: Colors.blue,
      icon: Icons.forest,
      imageURL:
          'https://store.steampowered.com/categories/homepageimage/category/adventure?cc=us&l=english'),
  Category(
      id: 'c3',
      title: 'Casual',
      color: Colors.pinkAccent,
      icon: Icons.airline_seat_recline_normal,
      imageURL:
          'https://store.steampowered.com/categories/homepageimage/category/casual?cc=us&l=english'),
  Category(
      id: 'c4',
      title: 'Racing',
      color: Colors.yellow,
      icon: Icons.sports_motorsports,
      imageURL:
          'https://store.steampowered.com/categories/homepageimage/category/racing?cc=us&l=english'),
  Category(
      id: 'c5',
      title: 'Strategy',
      color: Colors.green,
      icon: Icons.psychology,
      imageURL:
          'https://store.steampowered.com/categories/homepageimage/category/strategy?cc=us&l=english'),
  Category(
      id: 'c6',
      title: 'Sports',
      color: Colors.orange,
      icon: Icons.sports_soccer,
      imageURL:
          'https://store.steampowered.com/categories/homepageimage/category/sports?cc=us&l=english'),
  Category(
      id: 'c7',
      title: 'Simulation',
      color: Colors.purple,
      icon: Icons.devices,
      imageURL:
          'https://store.steampowered.com/categories/homepageimage/category/simulation?cc=us&l=english'),
  Category(
      id: 'c8',
      title: 'Horror',
      color: Colors.cyan,
      icon: Icons.self_improvement,
      imageURL:
          'https://store.steampowered.com/categories/homepageimage/category/horror?cc=us&l=english'),
];

List<Game> availableGames = [
  const Game(
      id: 'g1',
      title: 'Red Dead Redemption 2',
      imageURL:
          'https://cdn.akamai.steamstatic.com/steam/apps/1174180/header.jpg?t=1671485009',
      price: 1055,
      reviews: Review.positive,
      affordability: Affordability.affordable,
      categories: ['c1', 'c2'],
      hasDLC: true,
      isNSFW: true),
  const Game(
      id: 'g2',
      title: 'Grounded',
      imageURL:
          'https://cdn.akamai.steamstatic.com/steam/apps/962130/header.jpg?t=1684963474',
      price: 2699,
      reviews: Review.positive,
      affordability: Affordability.expensive,
      categories: ['c1', 'c2', 'c3'],
      hasDLC: true,
      isNSFW: false),
  const Game(
      id: 'g3',
      title: 'Slime Rancher 2',
      imageURL:
          'https://cdn.akamai.steamstatic.com/steam/apps/1657630/header.jpg?t=1676659435',
      price: 699,
      reviews: Review.neutral,
      affordability: Affordability.inexpensive,
      categories: ['c2', 'c3'],
      hasDLC: true,
      isNSFW: false),
  const Game(
      id: 'g4',
      title: 'Forza Horizon 4',
      imageURL:
          'https://cdn.akamai.steamstatic.com/steam/apps/1293830/header.jpg?t=1667326422',
      price: 1299,
      reviews: Review.positive,
      affordability: Affordability.affordable,
      categories: ['c3', 'c4', 'c7'],
      hasDLC: true,
      isNSFW: false),
  const Game(
      id: 'g5',
      title: 'Factorio',
      imageURL:
          'https://cdn.akamai.steamstatic.com/steam/apps/427520/header.jpg?t=1664264081',
      price: 1500,
      reviews: Review.positive,
      affordability: Affordability.expensive,
      categories: ['c2', 'c3', 'c5'],
      hasDLC: false,
      isNSFW: false),
  const Game(
      id: 'g6',
      title: 'FIFA 23',
      imageURL:
          'https://cdn.akamai.steamstatic.com/steam/apps/1811260/header.jpg?t=1682117049',
      price: 3499,
      reviews: Review.negetive,
      affordability: Affordability.expensive,
      categories: ['c3', 'c5', 'c6', 'c7'],
      hasDLC: true,
      isNSFW: false),
  const Game(
      id: 'g7',
      title: 'SnowRunner',
      imageURL:
          'https://cdn.akamai.steamstatic.com/steam/apps/1465360/header.jpg?t=1685034172',
      price: 1199,
      reviews: Review.neutral,
      affordability: Affordability.affordable,
      categories: ['c3', 'c7'],
      hasDLC: true,
      isNSFW: false),
  const Game(
      id: 'g8',
      title: 'The Outlast Trials',
      imageURL:
          'https://cdn.akamai.steamstatic.com/steam/apps/1304930/header.jpg?t=1684452998',
      price: 1300,
      reviews: Review.positive,
      affordability: Affordability.affordable,
      categories: ['c2', 'c3', 'c8'],
      hasDLC: true,
      isNSFW: true),
  const Game(
    id: 'g10',
    title: 'Planet Coaster',
    imageURL:
        'https://cdn.akamai.steamstatic.com/steam/apps/493340/header.jpg?t=1634868129',
    price: 2999,
    reviews: Review.positive,
    affordability: Affordability.expensive,
    categories: ['c3', 'c7'],
    hasDLC: true,
    isNSFW: false,
  ),
  const Game(
    id: 'g11',
    title: 'Stardew Valley',
    imageURL:
        'https://cdn.akamai.steamstatic.com/steam/apps/413150/header.jpg?t=1659830102',
    price: 1499,
    reviews: Review.positive,
    affordability: Affordability.affordable,
    categories: ['c2', 'c3'],
    hasDLC: false,
    isNSFW: false,
  ),
  const Game(
    id: 'g12',
    title: 'Resident Evil 3',
    imageURL:
        'https://cdn.akamai.steamstatic.com/steam/apps/952060/header.jpg?t=1616592690',
    price: 3999,
    reviews: Review.positive,
    affordability: Affordability.expensive,
    categories: ['c1', 'c8'],
    hasDLC: true,
    isNSFW: true,
  ),
  const Game(
    id: 'g13',
    title: 'Cities: Skylines',
    imageURL:
        'https://cdn.akamai.steamstatic.com/steam/apps/255710/header.jpg?t=1658273430',
    price: 2999,
    reviews: Review.positive,
    affordability: Affordability.expensive,
    categories: ['c3', 'c7'],
    hasDLC: true,
    isNSFW: false,
  ),
  const Game(
    id: 'g14',
    title: 'Doom Eternal',
    imageURL:
        'https://cdn.akamai.steamstatic.com/steam/apps/782330/header.jpg?t=1638255023',
    price: 2999,
    reviews: Review.positive,
    affordability: Affordability.affordable,
    categories: ['c1', 'c8'],
    hasDLC: true,
    isNSFW: true,
  ),
  const Game(
    id: 'g16',
    title: 'Horizon Zero Dawn',
    imageURL:
        'https://cdn.akamai.steamstatic.com/steam/apps/1151640/header.jpg?t=1669859881',
    price: 4999,
    reviews: Review.positive,
    affordability: Affordability.expensive,
    categories: ['c1', 'c2', 'c5'],
    hasDLC: true,
    isNSFW: false,
  ),
  const Game(
      id: 'g17',
      title: 'The Witcher 3: Wild Hunt',
      imageURL:
          'https://cdn.akamai.steamstatic.com/steam/apps/292030/header.jpg?t=1668793942',
      price: 1999,
      reviews: Review.positive,
      affordability: Affordability.affordable,
      categories: ['c1', 'c2', 'c5'],
      hasDLC: true,
      isNSFW: false),
  const Game(
      id: 'g19',
      title: 'Rainbow Six Siege',
      imageURL:
          'https://cdn.akamai.steamstatic.com/steam/apps/359550/header.jpg?t=1684966150',
      price: 1499,
      reviews: Review.positive,
      affordability: Affordability.affordable,
      categories: ['c1', 'c5', 'c6'],
      hasDLC: true,
      isNSFW: false),
  const Game(
      id: 'g20',
      title: 'Final Fantasy XIV',
      imageURL:
          'https://cdn.akamai.steamstatic.com/steam/apps/39210/header.jpg?t=1615471037',
      price: 2999,
      reviews: Review.positive,
      affordability: Affordability.expensive,
      categories: ['c1', 'c5'],
      hasDLC: true,
      isNSFW: false),
  const Game(
      id: 'g21',
      title: 'Resident Evil Village',
      imageURL:
          'https://cdn.akamai.steamstatic.com/steam/apps/1196590/header.jpg?t=1683275799',
      price: 4599,
      reviews: Review.positive,
      affordability: Affordability.expensive,
      categories: ['c1', 'c2', 'c8'],
      hasDLC: true,
      isNSFW: true),
  const Game(
      id: 'g22',
      title: 'Star Wars Jedi: Fallen Order',
      imageURL:
          'https://cdn.akamai.steamstatic.com/steam/apps/1172380/header.jpg?t=1673660330',
      price: 2499,
      reviews: Review.positive,
      affordability: Affordability.affordable,
      categories: ['c1', 'c2', 'c5'],
      hasDLC: true,
      isNSFW: false),
  const Game(
      id: 'g23',
      title: 'Need for Speed Heat',
      imageURL:
          'https://cdn.akamai.steamstatic.com/steam/apps/1222680/header.jpg?t=1668283553',
      price: 2999,
      reviews: Review.positive,
      affordability: Affordability.expensive,
      categories: ['c4'],
      hasDLC: true,
      isNSFW: false),
  const Game(
      id: 'g24',
      title: 'F1 2021',
      imageURL:
          'https://cdn.akamai.steamstatic.com/steam/apps/1134570/header.jpg?t=1681577160',
      price: 5999,
      reviews: Review.positive,
      affordability: Affordability.expensive,
      categories: ['c4'],
      hasDLC: true,
      isNSFW: false),
  const Game(
      id: 'g25',
      title: 'Dirt Rally 2.0',
      imageURL:
          'https://cdn.akamai.steamstatic.com/steam/apps/690790/header.jpg?t=1669138969',
      price: 1999,
      reviews: Review.positive,
      affordability: Affordability.affordable,
      categories: ['c4'],
      hasDLC: true,
      isNSFW: false),
  const Game(
      id: 'g27',
      title: 'NBA 2K22',
      imageURL:
          'https://cdn.akamai.steamstatic.com/steam/apps/1644960/header.jpg?t=1679724952',
      price: 3999,
      reviews: Review.positive,
      affordability: Affordability.expensive,
      categories: ['c6'],
      hasDLC: true,
      isNSFW: false),
  const Game(
      id: 'g29',
      title: 'Assetto Corsa',
      imageURL:
          'https://cdn.akamai.steamstatic.com/steam/apps/244210/header.jpg?t=1632363704',
      price: 1999,
      reviews: Review.positive,
      affordability: Affordability.affordable,
      categories: ['c4'],
      hasDLC: true,
      isNSFW: false),
  const Game(
      id: 'g32',
      title: 'PGA TOUR 2K21',
      imageURL:
          'https://cdn.akamai.steamstatic.com/steam/apps/1016120/header.jpg?t=1634251686',
      price: 4999,
      reviews: Review.positive,
      affordability: Affordability.expensive,
      categories: ['c6'],
      hasDLC: true,
      isNSFW: false),
  const Game(
      id: 'g37',
      title: 'Cricket 19',
      imageURL:
          'https://cdn.akamai.steamstatic.com/steam/apps/1028630/header.jpg?t=1600078703',
      price: 3499,
      reviews: Review.positive,
      affordability: Affordability.expensive,
      categories: ['c6'],
      hasDLC: true,
      isNSFW: false),
];
