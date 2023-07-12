import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toktok/addon/button_global.dart';
import 'package:toktok/addon/social_login.dart';
import 'package:toktok/addon/style.dart';
import 'package:toktok/addon/text_form_Global.dart';
import 'package:toktok/screen/register.dart';

import '../authentication/authen.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  final AuthenticationService _authService = AuthenticationService();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: firebase,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              title: Text('EROR'),
            ),
            body: Center(
              child: Text('${snapshot.error}'),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Form(
              key: formKey,
              child: Scaffold(
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
                              child: const Text(
                                'ร้านเตี๋ยวบ้าน',
                                style: TextStyle(
                                    color: Colors.red,
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
                                  'เข้าสู่ระบบด้วย บัญชีของคุณ',
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
                              validate: (value) {
                                if (value.isEmpty) {
                                  return 'กรุณากรอกอีเมล';
                                } else if (!value.endsWith('@gmail.com')) {
                                  return 'อีเมลต้องลงท้ายด้วย @gmail.com';
                                }
                                return null;
                              },
                              controller: emailController,
                              textInputType: TextInputType.emailAddress,
                              text: 'อีเมล',
                              obscure: false,
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            //ช่องกรอก password
                            textformglobal(
                              validate: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'กรุณากรอกรหัสผ่าน';
                                }
                                return null;
                              },
                              controller: passwordController,
                              textInputType: TextInputType.text,
                              text: 'รหัสผ่าน',
                              obscure: true,
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            buttonglobal(
                              child: isLoading
                                  ? CircularProgressIndicator(
                                      color: Colors.white,
                                    ) // แสดงตัวชี้วัดการโหลดรอ
                                  : Text(
                                      'เข้าสู่ระบบ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                              onTap: () async {
                                if (formKey.currentState!.validate()) {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  try {
                                    await FirebaseAuth.instance
                                        .signInWithEmailAndPassword(
                                          email: emailController.text,
                                          password: passwordController.text,
                                        )
                                        .then((value) =>
                                            formKey.currentState!.reset());
                                    await _authService.login();
                                    navigator!.pop();
                                    navigator!.pushNamed('/homepage');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('เข้าสู่ระบบสำเร็จ!'),
                                      ),
                                    );
                                  } on FirebaseAuthException catch (e) {
                                    log(e.code);
                                    if (e.code == 'invalid-email') {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              'อีเมลหรือรหัสผ่านไม่ถูกต้อง'),
                                        ),
                                      );
                                    } else if (e.code == 'wrong-password') {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text('รหัสผ่านไม่ถูกต้อง'),
                                        ),
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              'เกิดข้อผิดพลาดในการเข้าสู่ระบบ'),
                                        ),
                                      );
                                    }
                                    log('ERROR try catch: ' + e.toString());
                                  } finally {
                                    setState(() {
                                      isLoading = false;
                                    });
                                  }
                                }
                              },
                              text: 'เข้าสู่ระบบ',
                              ctlEmail: emailController.text,
                              password: passwordController.text,
                            ),
                            Container(
                              height: 50,
                              // color: Colors.white,
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'ลืมรหัสผ่าน ?',
                                    style: TextStyle(
                                        color: maincolors.textColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.to(register());
                                    },
                                    child: Text(
                                      'เปลี่ยนรหัสผ่าน',
                                      style: TextStyle(
                                          color: maincolors.mainColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
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
                        'ยังไม่มีบัญชี ใช่หรือไม่ ',
                        style: TextStyle(
                            color: maincolors.textColor,
                            fontWeight: FontWeight.bold),
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
                          'สร้างบัญชี',
                          style: TextStyle(
                              color: maincolors.mainColor,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
