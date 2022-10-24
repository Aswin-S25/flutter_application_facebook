import 'package:flutter/material.dart';
import 'package:flutter_application_facebook/assets.dart';
import 'package:flutter_application_facebook/widgets/avatar.dart';
class StatusSession extends StatelessWidget {
  const StatusSession({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avater(image: zucker, statusdisplay: true),
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