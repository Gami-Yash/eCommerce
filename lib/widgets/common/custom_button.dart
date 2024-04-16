// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/consts/consts.dart';
import 'package:flutter/material.dart';

Widget customButton({onPress, color, textColor, title }){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: color,
      padding: EdgeInsets.all(12)
    ),
      onPressed: onPress,
      child: Text(title ?? '',
        style: TextStyle(
          fontFamily: bold,
          color: textColor,
        ),
      ),
  );
}