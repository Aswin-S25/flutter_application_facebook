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
           StoryCard(image: zucker),
           StoryCard(image: musk),
           StoryCard(image: sunder)
        ],
      ),
    );
  }
}