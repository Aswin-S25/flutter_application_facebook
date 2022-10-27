import 'package:flutter/material.dart';
import 'package:flutter_application_facebook/assets.dart';
import 'package:flutter_application_facebook/sections/StorySession.dart';
import 'package:flutter_application_facebook/sections/statusSection.dart';
import 'package:flutter_application_facebook/widgets/headerButtonSession.dart';
import 'package:flutter_application_facebook/widgets/postCard.dart';
import './widgets/appBarButton.dart';
import './sections/statusSection.dart';
import './widgets/headerButtonSession.dart';
import './sections/roomSession.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(thickness: 1, color: Colors.grey[300]);

    Widget thickDivider =  Divider(
              thickness: 10,
              color: Colors.grey[300]
             );

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
            CircularButton(
              buttonicon: Icons.search,
              buttonAction: (() {
                debugPrint("pressed");
              }),
            ),
            CircularButton(
              buttonicon: Icons.chat,
              buttonAction: (() {
                debugPrint("Messager appears");
              }),
            )
          ],
        ),
        body: ListView(
          children: [
            const StatusSession(),
            thinDivider,
            const HeaderButtonSession(),
            thickDivider,
            const RoomSession(),
            thickDivider,
           const StorySession(),
           thickDivider,
            PostCard(avatar: bill, name: "Bill Gate", time: "5h", postImage: pichai_post, showBlueTick: true, shareCount: "100k", commentCount: "20k",likeCount: "1M",),
            thickDivider,
            PostCard(avatar: musk, name: "Elon Musk", time: "1m", postImage: musk_post, showBlueTick: true, shareCount: "1k", commentCount: "70", likeCount: "500"),
          ],
        ),
      ),
    );
  }
}
