import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_chatiy/widgets/custom_drawer.dart';
import 'package:my_chatiy/widgets/utils.dart';

class ChatWithBot extends StatelessWidget {
  const ChatWithBot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black, //const Color(0xff171717),
      appBar: CustomAppBar().myChatiyAppBar(
        IconButton(onPressed: ()=> Get.back(), icon:const Icon(Icons.keyboard_arrow_left_sharp, color: Colors.white,size:36,))
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal:6),
        margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            Center(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 73, 68, 68),
                    constraints: BoxConstraints(minWidth: 280),
                    contentPadding: EdgeInsets.all(20),
                    suffixIcon: Icon(
                      Icons.arrow_drop_up_sharp,
                      color: Colors.white,
                      size: 35,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                )
              ),
            ),

            SizedBox(height: 8),
            Text('   MYChatiy Nov 24 Version. Free Research Preview.',
              style: TextStyle(fontSize: 7, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
