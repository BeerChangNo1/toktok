import 'package:flutter/material.dart';

class textformglobal extends StatelessWidget {
  textformglobal(
      {super.key,
      required this.controller,
      required this.text,
      required this.textInputType,
      required this.validate,
      required this.obscure});

  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;
  final validate;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.only(top: 3, left: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 7)
          ]),
      child: TextFormField(
        validator: validate,
        keyboardType: TextInputType.emailAddress,
        obscureText: obscure,
        controller: controller,
        decoration: InputDecoration(
          hintText: text,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(0),
          hintStyle: const TextStyle(height: 1),
        ),
      ),
    );
  }
}
