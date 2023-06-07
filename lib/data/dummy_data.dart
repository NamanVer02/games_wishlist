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
    isNSFW: true,
    description:
        'Red Dead Redemption 2 is an epic tale of life in America\'s unforgiving heartland. Players take on the role of Arthur Morgan, a member of the Van der Linde gang, as he navigates the challenges of surviving in the wild west.',
  ),
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
    isNSFW: false,
    description:
        'Grounded is a survival game where players are shrunk down to the size of an ant and must navigate the dangers of a backyard. Build shelters, scavenge for resources, and battle against insects in this unique and immersive experience.',
  ),
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
    isNSFW: false,
    description:
        'Slime Rancher 2 is a charming and whimsical game where players become a slime rancher, raising and caring for adorable slimes on a distant alien planet. Explore the world, collect slimes, and build a thriving ranch.',
  ),
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
    isNSFW: false,
    description:
        'Forza Horizon 4 is a breathtaking racing game set in a dynamic open-world Britain. Experience the thrill of high-speed racing, explore beautiful landscapes, and compete with other players in this visually stunning and immersive game.',
  ),
  const Game(
    id: 'g5',
    title: 'Factorio',
    imageURL:
        'https://cdn.akamai.steamstatic.com/steam/apps/427520/header.jpg?t=1667913304',
    price: 599,
    reviews: Review.positive,
    affordability: Affordability.inexpensive,
    categories: ['c3', 'c5',],
    hasDLC: true,
    isNSFW: false,
    description:
        'Factorio is a complex and addictive strategy game where players build and manage a vast industrial empire. Gather resources, automate production, and overcome challenges to create an efficient and thriving network of factories.',
  ),
  const Game(
    id: 'g6',
    title: 'FIFA 23',
    imageURL:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/1811260/header.jpg?t=1682117049',
    price: 4999,
    reviews: Review.neutral,
    affordability: Affordability.expensive,
    categories: ['c3', 'c6'],
    hasDLC: true,
    isNSFW: false,
    description:
        'FIFA 23 is the latest installment in the popular soccer simulation series. Take control of your favorite teams, compete in thrilling matches, and experience the excitement and drama of the worlds most popular sport.',
  ),
  const Game(
    id: 'g7',
    title: 'SnowRunner',
    imageURL:
        'https://cdn.akamai.steamstatic.com/steam/apps/1465360/header.jpg?t=1665411511',
    price: 1999,
    reviews: Review.positive,
    affordability: Affordability.affordable,
    categories: ['c2', 'c7'],
    hasDLC: true,
    isNSFW: false,
    description:
        'SnowRunner is the ultimate off-road driving simulation. Tackle treacherous terrains, navigate through extreme weather conditions, and deliver valuable cargo across vast and challenging maps.',
  ),
  const Game(
    id: 'g8',
    title: 'The Outlast Trials',
    imageURL:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/1304930/header.jpg?t=1684452998',
    price: 4499,
    reviews: Review.negetive,
    affordability: Affordability.expensive,
    categories: ['c2', 'c8'],
    hasDLC: false,
    isNSFW: true,
    description:
        'The Outlast Trials is a co-op survival horror game set in the Cold War era. Players must endure horrifying experiments conducted by the Murkoff Corporation while uncovering dark secrets and evading terrifying enemies.',
  ),
  const Game(
    id: 'g9',
    title: 'Planet Coaster',
    imageURL:
        'https://cdn.akamai.steamstatic.com/steam/apps/493340/header.jpg?t=1669510865',
    price: 2999,
    reviews: Review.positive,
    affordability: Affordability.affordable,
    categories: ['c3', 'c7'],
    hasDLC: true,
    isNSFW: false,
    description:
        'Planet Coaster is a theme park simulation game that lets you unleash your creativity and build the ultimate amusement park. Design thrilling rides, create immersive environments, and provide unforgettable experiences for your park guests.',
  ),
  const Game(
    id: 'g10',
    title: 'Stardew Valley',
    imageURL:
        'https://cdn.akamai.steamstatic.com/steam/apps/413150/header.jpg?t=1668343027',
    price: 1499,
    reviews: Review.positive,
    affordability: Affordability.affordable,
    categories: ['c2', 'c3'],
    hasDLC: true,
    isNSFW: false,
    description:
        'Stardew Valley is a charming farming simulation game where players inherit a small farm and must work to restore it to its former glory. Plant crops, raise animals, engage with the community, and experience the joys of country life.',
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
    description:
        'Resident Evil 3 is a survival horror game that follows Jill Valentine, a former S.T.A.R.S. officer, as she tries to escape from a zombie-infested Raccoon City while being pursued by the relentless Nemesis.',
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
    description:
        'Cities: Skylines is a city-building simulation game that allows you to create and manage your own city. Build infrastructure, manage resources, and make strategic decisions to ensure the growth and prosperity of your city.',
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
    description:
        'Doom Eternal is a first-person shooter game and the direct sequel to Doom (2016). Play as the Doom Slayer and battle against hordes of demons across different dimensions using a variety of powerful weapons and abilities.',
  ),
  const Game(
    id: 'g16',
    title: 'Horizon Zero Dawn',
    imageURL:
        'https://cdn.akamai.steamstatic.com/steam/apps/1151640/header.jpg?t=1669859881',
    price: 4999,
    reviews: Review.positive,
    affordability: Affordability.expensive,
    categories: ['c1', 'c2', 'c3'],
    hasDLC: true,
    isNSFW: false,
    description:
        'Horizon Zero Dawn is an action RPG set in a post-apocalyptic world where machines dominate the Earth. Play as Aloy, a skilled hunter, and uncover the mysteries of the past while battling robotic creatures and exploring a vast open world.',
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
    isNSFW: false,
    description:
        'The Witcher 3: Wild Hunt is an action RPG based on the fantasy novels by Andrzej Sapkowski. Play as Geralt of Rivia, a monster hunter, and embark on an epic quest filled with rich storytelling, challenging combat, and immersive exploration.',
  ),
  const Game(
    id: 'g19',
    title: 'Rainbow Six Siege',
    imageURL:
        'https://cdn.akamai.steamstatic.com/steam/apps/359550/header.jpg?t=1684966150',
    price: 1499,
    reviews: Review.positive,
    affordability: Affordability.affordable,
    categories: ['c1', 'c5'],
    hasDLC: true,
    isNSFW: false,
    description:
        'Rainbow Six Siege is a tactical first-person shooter game that focuses on team-based gameplay and intense multiplayer battles. Plan and execute strategies as an attacker or defender in a variety of close-quarters combat scenarios.',
  ),
  const Game(
    id: 'g20',
    title: 'Final Fantasy XIV',
    imageURL:
        'https://cdn.akamai.steamstatic.com/steam/apps/39210/header.jpg?t=1615471037',
    price: 2999,
    reviews: Review.positive,
    affordability: Affordability.expensive,
    categories: ['c1', 'c2', 'c3'],
    hasDLC: true,
    isNSFW: false,
    description:
        'Final Fantasy XIV is a massively multiplayer online role-playing game (MMORPG) set in the fantasy world of Eorzea. Join forces with other players, complete quests, defeat powerful enemies, and explore a vast and visually stunning world.',
  ),
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
    isNSFW: true,
    description:
        'Resident Evil Village is a survival horror game and the eighth main installment in the Resident Evil series. Follow Ethan Winters as he explores a mysterious village infested with grotesque creatures and uncover the dark secrets that lie within.',
  ),
  const Game(
    id: 'g22',
    title: 'Star Wars Jedi: Fallen Order',
    imageURL:
        'https://cdn.akamai.steamstatic.com/steam/apps/1172380/header.jpg?t=1673660330',
    price: 2499,
    reviews: Review.positive,
    affordability: Affordability.affordable,
    categories: ['c1', 'c2'],
    hasDLC: true,
    isNSFW: false,
    description:
        'Star Wars Jedi: Fallen Order is an action-adventure game set in the Star Wars universe. Play as Cal Kestis, a young Jedi Padawan, and embark on a quest to restore the Jedi Order while evading the Imperial Inquisitors and their ruthless pursuit.',
  ),
  const Game(
    id: 'g23',
    title: 'Need for Speed Heat',
    imageURL:
        'https://cdn.akamai.steamstatic.com/steam/apps/1222680/header.jpg?t=1668283553',
    price: 2999,
    reviews: Review.positive,
    affordability: Affordability.expensive,
    categories: ['c2', 'c4'],
    hasDLC: true,
    isNSFW: false,
    description:
        'Need for Speed Heat is a racing game that combines street racing and police pursuit. Experience the thrill of high-speed races, customize and upgrade your cars, and outsmart the cops in an open-world environment.',
  ),
  const Game(
    id: 'g24',
    title: 'F1 2021',
    imageURL:
        'https://cdn.akamai.steamstatic.com/steam/apps/1134570/header.jpg?t=1681577160',
    price: 5999,
    reviews: Review.positive,
    affordability: Affordability.expensive,
    categories: ['c4', 'c7'],
    hasDLC: true,
    isNSFW: false,
    description:
        'F1 2021 is the official video game of the 2021 Formula 1 World Championship. Immerse yourself in the world of Formula 1 racing, compete against real drivers and teams, and experience the thrill of the most prestigious motorsport event.',
  ),
  const Game(
    id: 'g25',
    title: 'Dirt Rally 2.0',
    imageURL:
        'https://cdn.akamai.steamstatic.com/steam/apps/690790/header.jpg?t=1669138969',
    price: 1999,
    reviews: Review.positive,
    affordability: Affordability.affordable,
    categories: ['c4', 'c7'],
    hasDLC: true,
    isNSFW: false,
    description:
        'Dirt Rally 2.0 is a realistic rally racing game that puts you in control of powerful off-road vehicles. Master the art of rally driving across various challenging tracks and compete in thrilling events against skilled opponents.',
  ),
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
    isNSFW: false,
    description:
        'NBA 2K22 is a basketball simulation game that provides an immersive and realistic NBA experience. Play as your favorite teams and players, compete in exciting matches, and build your own basketball dynasty.',
  ),
  const Game(
    id: 'g29',
    title: 'Assetto Corsa',
    imageURL:
        'https://cdn.akamai.steamstatic.com/steam/apps/244210/header.jpg?t=1632363704',
    price: 1999,
    reviews: Review.positive,
    affordability: Affordability.affordable,
    categories: ['c4', 'c7'],
    hasDLC: true,
    isNSFW: false,
    description:
        'Assetto Corsa is a realistic racing simulator that offers an authentic driving experience. Choose from a wide selection of cars and tracks, compete against AI opponents or other players in online multiplayer, and fine-tune your driving skills to perfection.',
  ),
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
    isNSFW: false,
    description:
        'PGA TOUR 2K21 is a golf simulation game that brings the excitement of professional golf to your screen. Play as or alongside top PGA Tour pros, compete in tournaments, design your own courses, and experience the thrill of the sport.',
  ),
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
    isNSFW: false,
    description:
        'Cricket 19 is a realistic cricket simulation game that captures the excitement and nuances of the sport. Play as your favorite cricket team, compete in various cricket formats, and experience the highs and lows of a cricket match.',
  ),
];
