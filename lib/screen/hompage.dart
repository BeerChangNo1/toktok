import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:toktok/addon/appbar_global.dart';
import 'package:toktok/addon/newest.widget.dart';
import 'package:toktok/addon/style.dart';
import 'package:toktok/screen/login.dart';

import '../addon/categories.dart';
import '../addon/poppular.widget.dart';
import 'drawer.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      // backdropColor: maincolors.mainColor,
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: false,
      drawer: const drawer(),
      child: Scaffold(
        body: ListView(
          children: [
            appbar(
              advancedDrawerController: () {
                _advancedDrawerController.showDrawer();
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        CupertinoIcons.search,
                        color: Colors.red,
                      ),
                      Container(
                        height: 50,
                        width: 300,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'ค้นหารายการอาหาร...',
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      const Icon(Icons.filter_list)
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                'Categories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const categories(),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                'Popular',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const poppularwidget(),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                'Newest',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            newest(),
          ],
        ),
        floatingActionButton: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ]),
          // color: Colors.white,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {},
            child: Icon(
              CupertinoIcons.cart,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
