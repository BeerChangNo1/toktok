import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toktok/addon/style.dart';
import 'package:toktok/screen/hompage.dart';
// import 'package:toktok/screen/login.dart';
//ควยถอก
class splash_view extends StatelessWidget {
  const splash_view({super.key});

  @override
  Widget build(BuildContext context) {
    //todo ตั้งแวลาหน่วงก่อนไปหน้าถัดไป
    Timer(const Duration(seconds: 1), () {
      Get.to(const homepage());
    });

    //todo return Scaffold

    return Scaffold(
      backgroundColor: maincolors.mainColor,
      body: const Center(
        child: Text(
          'Logo',
          style: TextStyle(
              color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
