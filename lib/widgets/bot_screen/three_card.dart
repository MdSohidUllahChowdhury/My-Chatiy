import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:my_chatiy/views/chat_with_bot.dart';

Widget threeCard(BuildContext context) {
  return Expanded(
    child: Row(
      children: [
        Column(
          children: [
            Animate(
              child: Container(
                margin: const EdgeInsets.all(4),
                height: MediaQuery.sizeOf(context).height * 0.35,
                width: MediaQuery.sizeOf(context).width * 0.41,
                decoration: const BoxDecoration(
                    color: Color(0xffC6F432),
                    borderRadius: BorderRadius.all(Radius.circular(24))),
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
                    )
                  ],
                ),
              ),
            ).animate().flip(delay: const Duration(seconds: 1)).shimmer(
                duration: const Duration(milliseconds: 3000),
                color: Colors.white,
                delay: const Duration(seconds: 2))
          ],
        ),
        Column(
          children: [
            Animate(
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
                        '    Chat with Bot',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            )
                .animate()
                .shimmer(
                    duration: const Duration(milliseconds: 3000),
                    color: Colors.white,
                    delay: const Duration(seconds: 2))
                .flipH(),
            Animate(
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
                      '    Search by Image',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
                .animate()
                .shimmer(
                  duration: const Duration(milliseconds: 2000),
                  color: Colors.white,
                )
                .flipV(),
          ],
        ),
      ],
    ),
  );
}
