// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/consts/Icons_list.dart';
import 'package:e_commerce/consts/colors.dart';
import 'package:e_commerce/consts/consts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              alignment: Alignment.center,
              color: lightGrey,
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: 'Search Anything ....',
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),

          //   Swiper
          VxSwiper.builder(
            aspectRatio: 16/9,
              autoPlay: true,
              height: 150,
              itemCount: sliderList.length,
              enlargeCenterPage: true,
              itemBuilder: (context, index){
                return Container(
                  child: Image.asset(sliderList[index], fit: BoxFit.fill,),
                ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
              }
          )

          ],
        ),
      ),
    );
  }
}
