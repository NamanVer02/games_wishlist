import 'package:flutter/material.dart';
import 'package:games_wishlist/models/game.dart';

class GameItemTrait extends StatelessWidget {
  const GameItemTrait({super.key, required this.game});

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              Icons.currency_rupee,
            ),
            Text(
              '${(game.price.toInt())}',
              maxLines: 2,
              textAlign: TextAlign.center,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),

        const SizedBox(height: 8,),

        Row(
          children: [
            (game.hasDLC) ? const Icon(Icons.check_circle_outline) : const Icon(Icons.cancel_outlined),
            const Text('DLC', style: TextStyle(color: Colors.white),)
          ],
        ),

        const SizedBox(height: 8,),

        Row(
          children: [
            (game.isNSFW) ? const Icon(Icons.check_circle_outline) : const Icon(Icons.cancel_outlined),
            const Text('NSFW', style: TextStyle(color: Colors.white),)
          ],
        )
      ],
    );
  }
}
