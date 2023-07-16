import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:toktok/addon/appbar_global.dart';
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
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
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
            child: Scaffold(
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
                  child: Form(
                    key: formKey,
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
                                  'สร้างบัญชีผู้ใช้',
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
                              validate: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'กรุณากรอกรหัสผ่าน';
                                } else if (value.length < 6) {
                                  return 'กรอกรหัสผ่านอย่างน้อย 6 ตัว';
                                }
                                return null;
                              },
                              controller: regis_passwordController,
                              textInputType: TextInputType.text,
                              text: 'password',
                              obscure: true,
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            // textformglobal(
                            //   controller: regis_passwordconfrimController,
                            //   textInputType: TextInputType.text,
                            //   text: 'confrim_password',
                            //   obscure: true,
                            // ),
                            const SizedBox(
                              height: 25,
                            ),
                            InkWell(
                              onTap: () async {
                                if (formKey.currentState!.validate()) {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  try {
                                    await FirebaseAuth.instance
                                        .createUserWithEmailAndPassword(
                                          email: regis_emailController.text,
                                          password:
                                              regis_passwordController.text,
                                        )
                                        .then((value) =>
                                            formKey.currentState!.reset());
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('สมัครสมาชิกสำเร็จ!'),
                                      ),
                                    );
                                    navigator!.pop();
                                  } on FirebaseAuthException catch (e) {
                                    if (e.code == 'email-already-in-use') {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              'อีเมลซ้ำกับบัญชีผู้ใช้ที่มีอยู่แล้ว'),
                                        ),
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              'เกิดข้อผิดพลาดในการสร้างบัญชีผู้ใช้'),
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
                              child: Container(
                                alignment: Alignment.center,
                                height: 55,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(6),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 10,
                                    )
                                  ],
                                ),
                                child: isLoading
                                    ? const CircularProgressIndicator(
                                        color: Colors.white,
                                      ) // แสดงตัวชี้วัดการโหลดรอ
                                    : const Text(
                                        'สมัครสมาชิก',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
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
                          color: maincolors.textColor,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        // Get.back();

                        log('Sign Up');
                      },
                      child: Text(
                        'Sign IN',
                        style: TextStyle(
                            color: maincolors.mainColor,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
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
