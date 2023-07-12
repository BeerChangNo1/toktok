import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toktok/screen/cartpage.dart';
import 'package:toktok/screen/hompage.dart';
import 'package:toktok/screen/item.page.dart';
import 'package:toktok/screen/list.menu.dart';
import 'package:toktok/screen/login.dart';
import 'authentication/authen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthenticationService _authService = AuthenticationService();
  bool isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  Future<void> checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    setState(() {
      this.isLoggedIn = isLoggedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => isLoggedIn ? homepage() : loginpage(),
        "/homepage": (context) => homepage(),
        "/loginpage": (context) => loginpage(),
        "/cartpage": (context) => cartpage(),
        "/itempage": (context) => itempage(),
        "/listmenu": (context) => listmenu(),
      },
    );
  }
}
