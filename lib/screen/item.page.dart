import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:toktok/addon/appbar_global.dart';

import 'drawer.dart';

class itempage extends StatelessWidget {
  itempage({super.key});
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: false,
      drawer: const drawer(),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 5),
          child: ListView(
            children: [appbar()],
          ),
        ),
      ),
    );
  }
}
