import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:my_chatiy/views/intro%20screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _splash();
    super.initState();
  }

  _splash() async {
    await Future.delayed(const Duration(seconds: 4), () {});
    Get.to(() => const WelcomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Animate(
        child: Center(
            child: Image.asset(
          'lib/assets/images/appLogo.png',
          height: 260,
        )),
      )
          .animate()
          .flipH()
          .shimmer(color: Colors.white, duration: const Duration(seconds: 3)),
    );
  }
}
