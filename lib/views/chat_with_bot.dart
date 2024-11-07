import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_chatiy/widgets/chat_bot/custom_drawer.dart';

class ChatWithBot extends StatelessWidget {
  const ChatWithBot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'MYChatiy 👋',
          style:
              TextStyle(fontSize: 25, color: Colors.black, letterSpacing: 1.2),
        ),
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon:
                  const Icon(Icons.home_filled, color: Colors.black, size: 22))
        ],
      ),
      drawer: customDrawer(context),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.telegram_sharp,
                      color: Colors.white,
                      size: 35,
                    ),
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: Color(0xff171717),
                    constraints: BoxConstraints(minWidth: 280)),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              '   MYChatiy Nov 24 Version. Free Research Preview.',
              style: TextStyle(fontSize: 7, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
