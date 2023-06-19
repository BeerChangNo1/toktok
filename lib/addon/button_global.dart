import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toktok/addon/style.dart';
import 'package:toktok/screen/hompage.dart';

class buttonglobal extends StatelessWidget {
  const buttonglobal({super.key, this.ctlEmail, this.text});

  final ctlEmail;
  final text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(homepage());
        log(ctlEmail);
        log('เข้าสู่ระบบ');
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color: maincolors.mainColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10)
          ],
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
