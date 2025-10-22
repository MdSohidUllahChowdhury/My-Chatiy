import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:my_chatiy/views/intro%20screen/welcome_screen.dart';
import 'package:my_chatiy/views/main%20screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    splashFunction();
    super.initState();
  }

  splashFunction() async {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    if(user!=null){
     await Future.delayed(const Duration(seconds: 3), () {});
    Get.to(() => const BotScreen());
    }else{
     await Future.delayed(const Duration(seconds: 3), () {});
    Get.to(() => const WelcomeScreen());
    }
     
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Animate(
        child:const Center(
          child:CircleAvatar(
                backgroundColor: Colors.white,
                radius: 150,
                child: CircleAvatar(
                  radius: 140,
                  backgroundImage: AssetImage('lib/assets/images/appLogo.png'),
                ),
              ),
        ), 
      )
          .animate()
          .flipH()
          .shimmer(color: Colors.white, duration: const Duration(seconds: 3)),
    );
  }
}
