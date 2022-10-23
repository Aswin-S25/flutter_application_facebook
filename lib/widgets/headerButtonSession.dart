import 'package:flutter/material.dart';

class HeaderButtonSession extends StatelessWidget {
  Widget headerButton({
    required String buttonText,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color buttoncolor,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(buttonIcon, color: buttoncolor),
      label: Text(buttonText),
    );
  }

  const HeaderButtonSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(buttonText: "Live", buttonIcon:Icons.video_call , buttonAction: (){}, buttoncolor: Colors.red),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          headerButton(buttonText: "Photos", buttonIcon: Icons.photo_library, buttonAction: (){}, buttoncolor: Colors.green),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          headerButton(buttonText: "video", buttonIcon: Icons.video_call, buttonAction: (){}, buttoncolor: Colors.purple),
          
        ],
      ),
      
    );
  }
}
