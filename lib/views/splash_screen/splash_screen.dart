// ignore_for_file: prefer_const_constructors


import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/views/auth_screen/login_screen.dart';
import 'package:e_commerce/widgets/common/appLogo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  changeScreen(){
    Future.delayed(Duration(seconds: 3),(){
      Get.to(()=>LoginScreen());
      }
    );
  }

  @override
  void initState() {
    super.initState();
    changeScreen();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashBlack,
      body: Center(
        child: Column(
          children: [
            Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Image.asset(icSplashBg, width: 300,),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: appLogoWidget(),
            ),
            Container(
              margin: EdgeInsets.only(),
              child: Text('eMart',
                style: TextStyle(
                  fontFamily: bold,
                  fontSize: 22,
                  color: redColor,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(),
              child: Text('Version 1.0.0',
                style: TextStyle(
                  color: redColor,
                ),
              ),
            ),
            Expanded(
                child: Container(),
            ),
            Container(
              margin: EdgeInsets.only(),
              child: Text('-Yash',
                style: TextStyle(
                  fontFamily: semibold,
                  fontSize: 16,
                  color: redColor
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}







// same code for the above things


// Align(alignment: Alignment.topLeft ,child: Image.asset(icSplashBg, width: 300,)),
// 20.heightBox,
// appLogoWidget(),
// 10.heightBox,
// Text('eMart',
// style: TextStyle(
// fontFamily: bold,
// fontSize: 22,
// color: redColor,
// ),
// ),
// 5.heightBox,
// Text('Version 1.0.0',
// style: TextStyle(
// color: redColor,
// ),
// ),
// Spacer(),
// Text('-Yash',
// style: TextStyle(
// fontFamily: semibold,
// fontSize: 16,
// color: redColor,
// ),
// ),
// 30.heightBox,
