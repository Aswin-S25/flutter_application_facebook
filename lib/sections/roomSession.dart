import 'package:flutter/material.dart';
import 'package:flutter_application_facebook/assets.dart';
import 'package:flutter_application_facebook/widgets/avatar.dart';

class RoomSession extends StatelessWidget {
  const RoomSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          createRoomButton(),
              Avater(image: musk, statusdisplay: true,),
              Avater(image: bill, statusdisplay: true),
              Avater(image: jeff, statusdisplay: true),
              Avater(image: sunder, statusdisplay: true)
            ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
              width: 2, 
              color: Color.fromARGB(255, 115, 177, 227)),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(230)),
        ),
        icon: const Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        onPressed: null,
        label: const Text(
          "Create \nRoom",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
