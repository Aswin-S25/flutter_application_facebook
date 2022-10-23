import 'package:flutter/material.dart';
import './widgets/appBarButton.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Facebook",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            AppBarButton(
              buttonicon: Icons.search,
              buttonAction: (() {
                print("pressed");
              }),
            ),

            AppBarButton(
              buttonicon: Icons.chat,
              buttonAction: (() {
                print("Messager appears");
              }),
            )
          ],
        ),
      ),
    );
  }
}
