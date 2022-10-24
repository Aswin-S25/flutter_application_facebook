import 'package:flutter/material.dart';
// import 'package:flutter_application_facebook/assets.dart';
// import 'package:flutter_application_facebook/widgets/avatar.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
  
      ),
      child: Stack(
        children: [
          
        ],
      ),
    );
  }
}
