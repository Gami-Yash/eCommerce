// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // calling home controller
    var controller = Get.put(HomeController());


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
      body: Column(
        children: [
          Obx(()=>Expanded(child: navBody.elementAt(controller.curentNavIndex.value))),
        ],

      ),
      bottomNavigationBar: Obx(()=>
            BottomNavigationBar(
              currentIndex: controller.curentNavIndex.value,
              type: BottomNavigationBarType.fixed,
              backgroundColor: whiteColor,
              selectedItemColor: redColor,
              selectedLabelStyle: TextStyle(
              fontFamily: semibold,
              ),
              items: navbarItem,
              onTap: (value){
                  controller.curentNavIndex.value = value;
              },
        ),
      ),
    );
  }
}
