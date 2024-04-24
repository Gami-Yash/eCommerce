// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/consts/Icons_list.dart';
import 'package:e_commerce/consts/colors.dart';
import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/widgets/common/home_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: 'Search Anything ....',
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),
            10.heightBox,
            Expanded(
              child: SingleChildScrollView (
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        itemCount: sliderList.length,
                        enlargeCenterPage: true,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Image.asset(
                              sliderList[index],
                              fit: BoxFit.fill,
                            ),
                          ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                        }
                    ),
                    10.heightBox,
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:  List.generate(2, (index) => homeButtons(
                            width: context.screenWidth / 2.5,
                            height: context.screenHeight * 0.15,
                            icon: index == 0 ? icTodaysDeal : icFlashDeal,
                            title : index == 0 ? "Todays Deal" : "FLash Sale"
                        )
                        )
                    ),
                    10.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        itemCount: secondSliderList.length,
                        enlargeCenterPage: true,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Image.asset(
                              secondSliderList[index],
                              fit: BoxFit.fill,
                            ),
                          ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                        }
                    ),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(3, (index) => homeButtons(
                        width: context.screenWidth / 3.5,
                        height: context.screenHeight * 0.15,
                        icon: index == 0 ? icTopCategories : index == 1 ? icBrands : icTopSeller,
                        title: index == 0 ? 'Top Categories' : index == 1 ? 'Brands' : 'Top Brands',
                
                      )
                      ),
                    ),
                    20.heightBox,
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Featured Categories',
                        style: TextStyle(
                          color: darkFontGrey,
                          fontSize: 18,
                          fontFamily: semibold,
                        ),
                      ),
                    ),
                    20.heightBox,
                    Row(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
