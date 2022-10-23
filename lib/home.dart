import 'package:flutter/material.dart';
import 'package:flutter_application_facebook/sections/statusSection.dart';
import 'package:flutter_application_facebook/widgets/headerButtonSession.dart';
import './widgets/appBarButton.dart';
import './sections/statusSection.dart';
import './widgets/headerButtonSession.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        body: ListView(
          children: [
             const StatusSession(),
             Divider(
              thickness: 1,
              color: Colors.grey[300]
             ),
             const HeaderButtonSession(),
             Divider(
              color: Colors.grey[300],
              thickness: 10,
          ),
          ],
        ),
      ),
    );
  }
}
