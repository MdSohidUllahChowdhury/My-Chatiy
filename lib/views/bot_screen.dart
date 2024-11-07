import 'package:flutter/material.dart';
import 'package:my_chatiy/widgets/bot_screen/custom_appbar.dart';
import 'package:my_chatiy/widgets/bot_screen/history.dart';
import 'package:my_chatiy/widgets/bot_screen/three_card.dart';

class BotScreen extends StatelessWidget {
  const BotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin:const EdgeInsets.symmetric(horizontal:8,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
          customAppBar(),
          const SizedBox(height:40,),
          const Text('How many i helps\nYou today',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  fontFamily: '',
                  fontSize: 25,
                )),
          const SizedBox(height:30,),
          threeCard(context),
          const SizedBox(height:20),
          const Text('History',style: 
          TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: ''
          ),),
          history(context)
          ]
        ) ,
      ),
    );
  }
}