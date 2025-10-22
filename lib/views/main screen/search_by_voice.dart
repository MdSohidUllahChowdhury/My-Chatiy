
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_chatiy/widgets/utils.dart';

class SearchByVoice extends StatefulWidget {
  const SearchByVoice({super.key});

  @override
  State<SearchByVoice> createState() => _SearchByVoiceState();
}

class _SearchByVoiceState extends State<SearchByVoice> {
  bool isListening = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar().myChatiyAppBar(
        IconButton(onPressed: ()=> Get.back(), icon:const Icon(Icons.keyboard_arrow_left_sharp,color: Colors.white,size:36,))
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              isListening ? 'Listening...' : 'Tap on the mic to speak',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w300,
              ),
            ).animate().fade(duration: 500.ms),
            SizedBox(height: 40.h),
            GestureDetector(
              onTap: () {
                setState(() {
                  isListening = !isListening;
                });
              },
              child: Animate(
                target: isListening ? 1 : 0,
                child: Container(
                  height: 120.w,
                  width: 120.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Colors.pinkAccent.withOpacity(0.8),
                        Colors.blueAccent.withOpacity(0.8),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pinkAccent.withOpacity(0.5),
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Icon(
                    CupertinoIcons.mic_fill,
                    color: Colors.white,
                    size: 60.sp,
                  ),
                ),
              )
                  .scale(
                    begin: const Offset(1, 1),
                    end: const Offset(1.2, 1.2),
                  )
                  .then(
                    duration: 200.ms,
                  )
                  .scale(
                    begin: const Offset(1.2, 1.2),
                    end: const Offset(1, 1),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
