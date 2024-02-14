import 'package:dice_bear/dice_bear.dart';
import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  MessageTile({super.key});
  Avatar _avatar =
      DiceBearBuilder.withRandomSeed(sprite: DiceBearSprite.croodles).build();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.shade300,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              CircleAvatar(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // borderRadius: BorderRadius.circular(50),
                  ),
                  child: _avatar.toImage(fit: BoxFit.fill),
                ),
                radius: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "UserName",
                  ),
                  Text(
                    "Message",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
