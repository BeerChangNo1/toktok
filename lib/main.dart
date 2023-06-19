import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toktok/screen/cartpage.dart';
import 'package:toktok/screen/hompage.dart';
// import 'package:toktok/screen/hompage.dart';
import 'package:toktok/screen/login.dart';
import 'package:toktok/screen/splash_view.dart';

//สวัสดีค้าบบ git จะอัพลงโนตบุคล้ะน้ะ ต่อไปจะไปทำในคอมต่อล้ะน้ะ ......
// มีการแก้ไข
void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: homepage(),
      routes: {
        "/": (context) => homepage(),
        "/homepage": (context) => homepage(),
        "/loginpage": (context) => loginpage(),
        "/cartpage": (context) => cartpage(),
      },
    );
  }
}
