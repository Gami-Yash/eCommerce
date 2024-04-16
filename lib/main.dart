// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // as we are using getx we have to change the material app to get material app

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        fontFamily: regular,
      ),
      home: SplashScreen(),
    );
  }
}
