import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {

  final IconData buttonicon;
  final void Function() buttonAction;
  const AppBarButton({super.key, required this.buttonicon,  required this.buttonAction});

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
          color: Colors.black,
          size: 27,
        ),
        onPressed: buttonAction,
      ),
    );
  }
}
