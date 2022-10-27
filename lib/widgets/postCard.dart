import 'package:flutter/material.dart';
import 'package:flutter_application_facebook/widgets/bluetick.dart';
import 'package:flutter_application_facebook/widgets/headerButtonSession.dart';

import 'avatar.dart';

class PostCard extends StatelessWidget {
  PostCard(
      {super.key,
      required this.avatar,
      required this.name,
      required this.time,
      required this.postImage,
      this.showBlueTick = false,
      required this.shareCount,
      required this.commentCount,
      required this.likeCount});
  final String avatar;
  final String name;
  final String time;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentCount;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          imageSection(),
          footerPost(),
          Divider(thickness: 1, color: Colors.grey[300]),
          postButton(),
        ],
      ),
    );
  }

  Widget imageSection() {
    return Container(
      height: 320,
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 0, right: 0),
      // child: Image.asset(postImage, fit: BoxFit.cover,),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(postImage),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget headerButton({
    required String buttonText,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color buttoncolor,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(buttonIcon, color: buttoncolor),
      label: Text(buttonText, style: TextStyle(color: Colors.black),),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avater(image: avatar, statusdisplay: false, width: 40,height: 40,),
      title: Row(
        children: [
          Text(name, style: const TextStyle(color: Colors.black)),
          const SizedBox(width: 10),
          showBlueTick ? BlueTick() : SizedBox(height: 10),
        ],
      ),
      subtitle: Row(
        children: [
          Text(time),
          const SizedBox(width: 10),
          Icon(Icons.public, color: Colors.grey[700], size: 15),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          debugPrint("more option");
        },
        icon: Icon(
          Icons.more_horiz_outlined,
          color: Colors.grey[700],
        ),
      ),
    );
  }

  Widget footerPost() {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                const SizedBox(width: 5),
                displayText(label: likeCount),
                
              ],
              
            ),
            
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                const SizedBox(width: 5),
                displayText(label: "Comments"),
                const SizedBox(width: 10),
                displayText(label: shareCount),
                const SizedBox(
                  width: 5,
                ),
                displayText(label: "Shares"),
                const SizedBox(width: 10),
                Avater(
                  image: avatar,
                  statusdisplay: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                    onPressed: (() {
                      debugPrint("drop buttin added");
                    }),
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey[700],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }
Widget verticaldivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );
  Widget postButton() {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
              buttonText: "Like",
              buttonIcon: Icons.thumb_up_alt_outlined,
              buttonAction: () {},
              buttoncolor: Color.fromARGB(255, 147, 140, 140)),
          verticaldivider,
          headerButton(
              buttonText: "Comments",
              buttonIcon: Icons.comment_outlined,
              buttonAction: () {},
              buttoncolor: Colors.grey),
          verticaldivider,
          headerButton(
              buttonText: "Share",
              buttonIcon: Icons.share_outlined,
              buttonAction: () {},
              buttoncolor: Colors.grey),
        ],
      ),
    );
  }
}
