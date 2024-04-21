// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/consts/consts.dart';
import 'package:flutter/material.dart';


Widget homeButtons({width, height, icon, title, onPress}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon, width: 26,),
      10.heightBox,
      Text(title,
        style: TextStyle(
          fontFamily: semibold,
          color: darkFontGrey,
        ),
      ),
    ],
  ).box.white.rounded.size(width, height).shadowSm.make();
}