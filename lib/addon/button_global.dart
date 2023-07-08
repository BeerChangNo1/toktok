import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toktok/addon/style.dart';
import 'package:toktok/model/model.login.dart';
import 'package:toktok/screen/hompage.dart';
import 'package:toktok/authentication/mock_apiclient.dart';

class buttonglobal extends StatelessWidget {
  buttonglobal(
      {super.key,
      this.ctlEmail,
      this.text,
      this.password,
      this.onTap,
      this.child});
  final ctlEmail;
  final text;
  final password;
  bool isLoading = false;
  final onTap;
  final child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          alignment: Alignment.center,
          height: 55,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10)
            ],
          ),
          child: child),
    );
  }
}
