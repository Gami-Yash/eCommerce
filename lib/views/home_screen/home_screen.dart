// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var controller = get

    var navbarItem = [
      BottomNavigationBarItem(icon: Image.asset(icHome, width: 26,),label: 'Home'),
      BottomNavigationBarItem(icon: Image.asset(icCategories, width: 26,),label: 'Categories'),
      BottomNavigationBarItem(icon: Image.asset(icCart, width: 26,),label: 'Cart'),
      BottomNavigationBarItem(icon: Image.asset(icProfile, width: 26,),label: 'Account'),
    ];

    var navBody = [
      Container(color: Colors.blueAccent),
      Container(color: Colors.yellowAccent),
      Container(color: Colors.orangeAccent),
      Container(color: Colors.cyanAccent),
    ];


    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          selectedItemColor: redColor,
          selectedLabelStyle: TextStyle(
            fontFamily: semibold,
          ),
          items: navbarItem
      ),
    );
  }
}
