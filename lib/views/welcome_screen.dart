import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_chatiy/views/bot_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff171717),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.6,
              height: MediaQuery.sizeOf(context).height * 0.045,
              decoration: const BoxDecoration(
                  color: Color(0xffC6F432),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: const Center(
                  child: Text(
                'Personal AI Buddy',
                style: TextStyle(fontSize:14, letterSpacing: 1.2),
              )),
            ),
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 140,
              child: CircleAvatar(
                radius: 130,
                backgroundImage: AssetImage('lib/assets/images/appLogo.png'),
              ),
            ),           
            const Text('MYChatiy AI Assistent\nMake Your Life Super Easy',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  fontSize: 25,
                )),
            InkWell(
              onTap: () => Get.offAll(() => const BotScreen()),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.90,
                height: MediaQuery.sizeOf(context).height * 0.072,
                decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.all(Radius.circular(22))),
                child: const Center(
                    child: Text('Get Started',
                        style: TextStyle(fontSize:15, letterSpacing: 1.2))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
