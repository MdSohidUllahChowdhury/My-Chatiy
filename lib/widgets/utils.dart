import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:my_chatiy/views/main%20screen/search_by_chat.dart';
import 'package:my_chatiy/views/main%20screen/profile.dart';
import 'package:my_chatiy/views/main%20screen/search_by_image.dart';
import 'package:my_chatiy/views/main%20screen/search_by_voice.dart';

class ParentCard {
  voiceCard(BuildContext context) {
    return Animate(
      child: InkWell(
        onTap: () {
          Get.to(() => const SearchByVoice());
        },
        child: Container(
          margin: const EdgeInsets.all(4),
          height: MediaQuery.sizeOf(context).height * 0.35,
          width: MediaQuery.sizeOf(context).width * 0.41,
          decoration: const BoxDecoration(
              color: Color(0xffC6F432),
              borderRadius: BorderRadius.all(Radius.circular(24))),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      radius: 20,
                      child: const Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_outward,
                      size: 28,
                    )),
                const Text(
                  ' TALK\n WITH\n BOT',
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      decorationThickness: 1.2),
                ),
              ],
            ),
          ),
        ),
      ),
    ).animate().flip().shimmer(
          duration: const Duration(seconds: 3),
          color: Colors.white,
          //delay: const Duration(seconds:1)
        );
  }

  chatCard(BuildContext context) {
    return Animate(
      child: InkWell(
        onTap: () => Get.to(() => const ChatWithBot()),
        child: Container(
          margin: const EdgeInsets.all(2),
          height: MediaQuery.sizeOf(context).height * 0.17,
          width: MediaQuery.sizeOf(context).width * 0.5,
          decoration: const BoxDecoration(
              color: Color(0xffC09FF8),
              borderRadius: BorderRadius.all(Radius.circular(24))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey.shade800,
                    radius: 18,
                    child: const Icon(
                      Icons.chat,
                      color: Colors.white,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_outward,
                  )),
              const Text(
                '    CHAT \n    WITH AGENT',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    )
        .animate()
        .shimmer(
          duration: const Duration(seconds: 3),
          color: Colors.white,
        )
        .flipV();
  }

  imageCard(BuildContext context) {
    return Animate(
      child: InkWell(
        onTap: () {
          Get.to(() => const SearchByImage());
        },
        child: Container(
          margin: const EdgeInsets.all(2),
          height: MediaQuery.sizeOf(context).height * 0.17,
          width: MediaQuery.sizeOf(context).width * 0.5,
          decoration: const BoxDecoration(
              color: Color(0xffFEC4DD),
              borderRadius: BorderRadius.all(Radius.circular(24))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey.shade800,
                    radius: 18,
                    child: const Icon(
                      Icons.image_outlined,
                      color: Colors.white,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_outward,
                  )),
              const Text(
                '    SEARCH BY \n    PICTURE',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    )
        .animate()
        .shimmer(
          duration: const Duration(seconds: 3),
          color: Colors.white,
        )
        .flipH();
  }
}

class CustomAppBar {
  myChatiyAppBar(Widget leading) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      leading: leading,
      title: const Text(
        'MYChatiy 👋',
        style: TextStyle(
            fontSize: 26,
            color: Colors.pinkAccent,
            letterSpacing: 3,
            fontWeight: FontWeight.w100),
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.grey[800],
          radius: 20,
          child: IconButton(
              onPressed: () {
                Get.to(() => const UserInfoScreen());
              },
              icon: const Icon(
                Icons.person,
                color: Colors.white,
                size: 24,
              )),
        ),
        const SizedBox(
          width: 6,
        )
      ],
    );
  }
}
