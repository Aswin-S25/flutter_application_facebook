import 'package:flutter/material.dart';

class Avater extends StatelessWidget {
  const Avater({super.key, required this.image, required this.statusdisplay});

  final String image;
  final bool statusdisplay;

  @override
  Widget build(BuildContext context) {
    Widget StatusIndicator;
    return Padding(
      padding: EdgeInsets.all(8),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(300),
            child: Image.asset(
              image,
              width: 45,
              height: 45,
              fit: BoxFit.cover,
            ),
          ),
          if (statusdisplay == true)
            StatusIndicator = Positioned(
              bottom: 0,
              right: 1.0,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
