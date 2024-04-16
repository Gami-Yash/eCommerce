// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/common/appLogo.dart';
import '../../widgets/common/bg_widget.dart';
import '../../widgets/common/custom_button.dart';
import '../../widgets/common/custom_textField.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({super.key});

  @override
  State<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {
  bool? isCheck = false;

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
                child: Text(
                  'Join eMart',
                  style: TextStyle(
                      fontFamily: bold, fontSize: 18, color: Colors.white),
                ),
              ),
              Column(
                children: [
                  customTextField(hint: 'Name', title: 'Name'),
                  customTextField(hint: 'E-mail', title: 'E-mail'),
                  customTextField(hint: 'Password', title: 'Password'),
                  customTextField(
                      hint: 'Confirm Password', title: 'Confirm Password'),
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget Password',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                       Checkbox(
                           value: isCheck,
                           onChanged: (newValue){
                             setState(() {
                               isCheck = newValue;
                             });
                           },
                           checkColor: Colors.white,activeColor: redColor,
                       ),
                      RichText(text: TextSpan(
                          children: const [
                            TextSpan(
                              text: 'I agree to',
                              style: TextStyle(
                                color: fontGrey,
                                fontFamily: bold
                              ),
                            ),
                          TextSpan(
                              text: ' terms & condition',
                              style: TextStyle(
                                  color: redColor,
                                  fontFamily: bold
                              ),
                            )
                          ]
                        )
                      )
                    ],
                  ),
                  SizedBox(
                    width: context.screenWidth - 50,
                    child: customButton(
                        title: 'Sign-Up',
                        color: redColor,
                        textColor: whiteColor,
                        onPress: () {}),
                  ),
                  RichText(text: TextSpan(
                    children: const [
                        TextSpan(
                          text: 'already have an account?',
                          style: TextStyle(
                            color: fontGrey,
                          )
                        ),
                      TextSpan(
                        text: ' Log in',
                        style: TextStyle(
                          color: redColor,
                          )
                        ),
                      ],
                    )
                  ).onTap(() {
                    Get.back();
                    }
                  )
                ],
              ).box.white.rounded.padding(EdgeInsets.all(18)).width(context.screenWidth - 65).make(),
            ],
          ),
        ),
      ),
    );
  }
}
