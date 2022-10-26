import 'package:flutter/material.dart';
import 'package:flutter_application_facebook/assets.dart';
import 'package:flutter_application_facebook/widgets/StoryCard.dart';

class StorySession extends StatelessWidget {
  const StorySession({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
           StoryCard(avatar: zucker, image: zucker, labelText: "Add your Story", createStoryStatus: true),
           StoryCard(avatar: musk, image: musk_post, labelText: "Elon Musk"),
           StoryCard(avatar: sunder, image: sundar_post, labelText: "Sunder Pichai"),
           StoryCard(avatar: bill, image: bill_post, labelText: "Bill Gate"),
          //  StoryCard(avatar: warren, image: warren_post, labelText: "Warren")

        ],
      ),
    );
  }
}