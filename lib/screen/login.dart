import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toktok/addon/button_global.dart';
import 'package:toktok/addon/social_login.dart';
import 'package:toktok/addon/style.dart';
import 'package:toktok/addon/text_form_Global.dart';
import 'package:toktok/screen/register.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            // color: Colors.green,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 70, 30, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'ร้านเตี๋ยวบ้าน',
                      style: TextStyle(
                          color: maincolors.mainColor,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login to your Account',
                        style: TextStyle(
                            color: maincolors.textColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  //ช่องกรอก Email
                  textformglobal(
                    controller: emailController,
                    textInputType: TextInputType.emailAddress,
                    text: 'Email',
                    obscure: false,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  //ช่องกรอก password
                  textformglobal(
                    controller: passwordController,
                    textInputType: TextInputType.text,
                    text: 'password',
                    obscure: true,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  buttonglobal(
                    text: 'เข้าสู่ระบบ',
                    ctlEmail: emailController.text,
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  socialLogin()
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dont\'t have an account?',
              style: TextStyle(
                  color: maincolors.textColor, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {
                Get.to(register());
                log('Sign Up');
              },
              child: Text(
                'Sign up',
                style: TextStyle(
                    color: maincolors.mainColor, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
