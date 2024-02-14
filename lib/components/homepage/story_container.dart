import 'package:dice_bear/dice_bear.dart';
import 'package:flutter/material.dart';

class StoryTile extends StatelessWidget {
  StoryTile({super.key});
  Avatar _avatar =
      DiceBearBuilder.withRandomSeed(sprite: DiceBearSprite.croodles).build();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade500,
        ),
        child: _avatar.toImage(),
      ),
    );
  }
}
