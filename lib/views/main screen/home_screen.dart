import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_chatiy/views/main%20screen/profile.dart';
import 'package:my_chatiy/widgets/dev_info.dart';
import 'package:my_chatiy/widgets/three_card.dart';
import 'package:my_chatiy/widgets/custom_drawer.dart';

class BotScreen extends StatelessWidget {
  const BotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 24,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: const Text(
          'MYChatiy 👋',
          style: TextStyle(
              fontSize: 25, color: Colors.pinkAccent, letterSpacing: 1.2),
        ),
        actions: [
        
          CircleAvatar(
            backgroundColor: Colors.blueAccent,
            radius: 17,
            child: IconButton(
                onPressed: () {
                  Get.to(() => const UserInfoScreen());
                },
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 17,
                )),
          ),
          const SizedBox(
            width: 6,
          )
        ],
      ),
      drawer: customDrawer(context),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 30),
          const Text('Get Your Answer\nChatiy is Here for Help',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                letterSpacing: 1.2,
                color: Colors.white,
                fontFamily: '',
                fontSize: 25,
              )),
          const SizedBox(height: 30),
          threeCard(context),
          const Expanded(child: SizedBox(height: 20)),
          const Text(
            ' Developer Information',
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w100,
                color: Colors.white,
                letterSpacing: 1.4),
          ),
          const SizedBox(height: 12),
          devInfo(context),
          const SizedBox(height: 15)
        ]),
      ),
    );
  }
}
