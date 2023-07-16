import 'package:flutter/material.dart';

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
