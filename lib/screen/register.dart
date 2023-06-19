import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:toktok/addon/appbar_global.dart';
import 'package:toktok/addon/button_global.dart';
import 'package:toktok/addon/social_login.dart';
import 'package:toktok/addon/style.dart';
import 'package:toktok/addon/text_form_Global.dart';
// import 'package:toktok/screen/login.dart';
// import 'package:toktok/screen/register.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final TextEditingController regis_emailController = TextEditingController();
  final TextEditingController regis_passwordController =
      TextEditingController();
  final TextEditingController regis_passwordconfrimController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: maincolors.mainColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            // color: Colors.green,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 15),
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
                        'Create your Account',
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
                    controller: regis_emailController,
                    textInputType: TextInputType.emailAddress,
                    text: 'Email',
                    obscure: false,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  //ช่องกรอก password
                  textformglobal(
                    controller: regis_passwordController,
                    textInputType: TextInputType.text,
                    text: 'password',
                    obscure: true,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  textformglobal(
                    controller: regis_passwordconfrimController,
                    textInputType: TextInputType.text,
                    text: 'confrim_password',
                    obscure: true,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  buttonglobal(
                    text: 'สมัครสมาชิก',
                    ctlEmail: regis_emailController.text,
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
                Get.back();

                log('Sign Up');
              },
              child: Text(
                'Sign IN',
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
