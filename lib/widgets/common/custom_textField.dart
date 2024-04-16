// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/consts/consts.dart';
import 'package:flutter/material.dart';


Widget customTextField({String? title, String? hint, controller}){

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(),
        padding: EdgeInsets.only(),
        child: Text(title ?? '',
          style: TextStyle(
            color: Colors.black,
            fontSize: 19,
            fontFamily: semibold,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            hintStyle: TextStyle(
              fontSize: 18,
              fontFamily: semibold,
              color: textfieldGrey,
            ),
            hintText: hint ?? '',
            isDense: true,
            fillColor: lightGrey,
            filled: true,
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))
          ),
        ),
      ),
    ],
  );
}

