import 'package:flutter/material.dart';
import 'package:flutter_application_facebook/assets.dart';
class StatusSession extends StatelessWidget {
  const StatusSession({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(300),
        child: Image.asset(musk, fit: BoxFit.fill),
      ),
      title: const TextField(
        decoration: InputDecoration(
          hintText: "what's on your mind",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none
        ),
      ),
    );
  }
}