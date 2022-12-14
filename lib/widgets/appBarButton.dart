import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonicon;
  final Color buttoncolor;
  final void Function() buttonAction;
  const CircularButton(
      {super.key, required this.buttonicon,  this.buttoncolor = Colors.black, required this.buttonAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          buttonicon,
          color: buttoncolor,
          size: 27,
        ),
        onPressed: buttonAction,
      ),
    );
  }
}
