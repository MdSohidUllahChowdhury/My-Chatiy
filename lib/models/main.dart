import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_chatiy/views/welcome_screen.dart';

void main() {
  runApp(ScreenUtilInit(
    designSize: const Size(375, 725),
    child: (GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Lato', useMaterial3: true),
        home: const WelcomeScreen())),
  ));
}
