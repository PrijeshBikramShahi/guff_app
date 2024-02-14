import 'package:flutter/material.dart';
import 'package:guff/components/homepage/message_tile.dart';
import 'package:guff/components/homepage/story_container.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({super.key});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          AvatarSection(),
          MessageSliderSection(),
        ],
      ),
    );
  }
}

class MessageSliderSection extends StatelessWidget {
  const MessageSliderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: AnimatedContainer(
        duration: Duration(),
        decoration: BoxDecoration(
          color: Colors.grey.shade500,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(top: 25),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 5,
            itemBuilder: (context, index) {
              return MessageTile();
            },
          ),
        ),
      ),
    );
  }
}

class AvatarSection extends StatelessWidget {
  const AvatarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return StoryTile();
          },
        ),
      ),
    );
  }
}
