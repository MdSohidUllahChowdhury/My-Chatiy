import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_chatiy/views/bot_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2D2727),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 55),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                style: TextStyle(fontSize: 11, letterSpacing: 1.2),
              )),
            ),
            const SizedBox( height: 65),
            Image.asset('lib/assets/images/chat.png'),
            const Text('How many i helps\n        You today',
                  style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  fontFamily: '',
                  fontSize: 25,
                )),
            const SizedBox(height: 55),
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
                        style: TextStyle(fontSize: 11, letterSpacing: 1.2))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
