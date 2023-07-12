import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
// import 'package:get/get.dart';
import 'package:toktok/addon/appbar_global.dart';
import 'package:toktok/addon/categories.dart';
import 'package:toktok/addon/newest.widget.dart';
import 'package:toktok/addon/poppular.widget.dart';
import 'package:toktok/screen/drawer.dart';

import '../addon/images.network.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final _advancedDrawerController = AdvancedDrawerController();
  bool isloading = true;
  image_network imgnet = image_network();

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
        drawer: drawer(),
        child: Scaffold(
          body: ListView(
            children: [
              appbar(
                advancedDrawerController: () {
                  log(12);
                  _advancedDrawerController.showDrawer();
                },
              ),
              //? ส่วนของ ฟิลค้นหา
              // Padding(
              //   padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              //   child: Container(
              //     width: double.infinity,
              //     height: 50,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.circular(20),
              //       boxShadow: const [
              //         BoxShadow(
              //           color: Colors.grey,
              //           spreadRadius: 2,
              //           blurRadius: 10,
              //           offset: Offset(0, 3),
              //         ),
              //       ],
              //     ),
              //     child: Padding(
              //       padding: EdgeInsets.symmetric(horizontal: 10),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           const Icon(
              //             CupertinoIcons.search,
              //             color: Colors.red,
              //           ),
              //           Container(
              //             height: 50,
              //             width: 250,
              //             child: const Padding(
              //               padding: EdgeInsets.symmetric(horizontal: 15),
              //               child: TextField(
              //                 decoration: InputDecoration(
              //                     hintText: 'ค้นหารายการอาหาร...',
              //                     border: InputBorder.none),
              //               ),
              //             ),
              //           ),
              //           const Icon(Icons.filter_list)
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              //? ส่วนของ เมนู
              const Padding(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    'หมวดหมู่',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
              const categories(),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  'ขายดี',
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
        ));
  }
}
