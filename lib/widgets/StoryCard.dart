import 'package:flutter/material.dart';
import 'package:flutter_application_facebook/widgets/appBarButton.dart';
import 'package:flutter_application_facebook/widgets/avatar.dart';
// import 'package:flutter_application_facebook/assets.dart';
// import 'package:flutter_application_facebook/widgets/avatar.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({super.key,required this.avatar, required this.image, required this.labelText, this.createStoryStatus = false});
  final String image;
  final String avatar;
  final String labelText;
  final bool createStoryStatus;
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
          Positioned(
            left: -5,
            top: -5,
            child:createStoryStatus ? CircularButton(
                buttonicon: Icons.add,
                buttoncolor: Colors.blue,
                buttonAction: (() {
                  debugPrint("Add Button Pressed");
                }
                )
                ) : Avater(image: avatar, statusdisplay: false, displayBorder: true,)
          ),
           Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText != null ? labelText : "N/A",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
