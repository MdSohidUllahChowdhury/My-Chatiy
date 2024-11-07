import 'package:flutter/material.dart';
import 'package:my_chatiy/widgets/bot_screen/dev_info.dart';
import 'package:my_chatiy/widgets/bot_screen/three_card.dart';
import 'package:my_chatiy/widgets/chat_bot/custom_drawer.dart';

class BotScreen extends StatelessWidget {
  const BotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'MYChatiy 👋',
          style: TextStyle(
              fontSize: 25, color: Colors.pinkAccent, letterSpacing: 1.2),
        ),
      ),
      drawer: customDrawer(context),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //customAppBar(),

          const SizedBox(
            height: 40,
          ),
          const Text('Get Your Answer\nChatiy is Here for Help',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                letterSpacing: 1.2,
                color: Colors.white,
                fontFamily: '',
                fontSize: 25,
              )),
          const SizedBox(
            height: 30,
          ),
          threeCard(context),
          const SizedBox(height: 20),

          const Text(
            'Developer Information',
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontFamily: '',
                letterSpacing: 1.2),
          ),
          devInfo(context)
        ]),
      ),
    );
  }
}
