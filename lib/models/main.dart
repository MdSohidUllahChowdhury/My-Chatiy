import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_chatiy/firebase%20config/firebase_options.dart';
import 'package:my_chatiy/views/welcome_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  runApp(ScreenUtilInit(
    designSize: const Size(375, 725),
    child: (GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Lato', useMaterial3: true),
        home: const WelcomeScreen())),
  ));
}