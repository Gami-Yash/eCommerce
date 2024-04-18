// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/consts/Icons_list.dart';
import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/views/auth_screen/signup_screen.dart';
import 'package:e_commerce/views/home_screen/home_screen.dart';
import 'package:e_commerce/widgets/common/appLogo.dart';
import 'package:e_commerce/widgets/common/bg_widget.dart';
import 'package:e_commerce/widgets/common/custom_button.dart';
import 'package:e_commerce/widgets/common/custom_textField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: context.screenHeight * 0.06),
                  child: appLogoWidget(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text('LogIn to eMart',
                    style: TextStyle(
                      fontFamily: bold,
                      fontSize: 18,
                      color: Colors.white
                    ),
                  ),
                ),
                Column(

                  children: [
                    customTextField(hint: 'E-mail', title: 'E-mail'),
                    customTextField(hint: 'Password', title: 'Password'),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                          onPressed: (){},
                          child: Text('Forget Password',
                          style: TextStyle(
                            color: Colors.blue
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: context.screenWidth - 50,
                      child: customButton(title: 'Login', color: redColor, textColor: whiteColor, onPress: (){
                        Get.to(()=>{HomeScreen()});

                      } ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text('Create a new account!',
                        style: TextStyle(
                          color: fontGrey,
                          fontSize: 16,
                        ),
                      ),
                    ), 
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: context.screenWidth - 50,
                      child: customButton(title: 'Sign-Up', color: redColor, textColor: whiteColor, onPress: (){
                        Get.to(()=>signupScreen());
                      }),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text('Login with!',
                        style: TextStyle(
                          color: fontGrey,
                          fontSize: 16
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: lightGrey,
                          child: Image.asset(socialMediaIcon[index], width: 30,),
                        ),
                      ))
                    )
                  ],
                ).box.white.rounded.padding(EdgeInsets.all(18)).width(context.screenWidth - 65).make(),
              ],
            ),
          ),
      )
    );
  }
}
