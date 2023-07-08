import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:toktok/addon/appbar_global.dart';
import 'package:toktok/addon/images.network.dart';

import '../addon/buttom.bar.dart';
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
      drawer: drawer(),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 5),
          child: ListView(
            children: [
              appbar(
                advancedDrawerController: () {
                  _advancedDrawerController.showDrawer();
                },
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Image.network(image_network().pizza),
              ),
              Container(
                // height: 26,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  /*    boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 5))
                  ], */
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingBar.builder(
                        itemCount: 5,
                        itemSize: 18,
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        onRatingUpdate: (index) {},
                      ),
                      Text(
                        '\$10',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                // height: 26,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.white,
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 5))
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Hot Pizza',
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Container(
                        // height: 10,
                        width: 100,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              CupertinoIcons.minus,
                              color: Colors.white,
                            ),
                            Text('1'),
                            Icon(
                              CupertinoIcons.plus,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // height: 26,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.white,
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 5))
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(14),
                  child: Text(
                    'Hot Pizza มีหลากหลายหน้าให้เลือกมีทั้งอร่อยและไม่อร่อยสำหรับคนบางคนก็กินได้แล้วแต่จะสั่ง',
                    style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                // height: 26,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  /*   boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 3))
                  ], */
                ),
                child: const Padding(
                  padding: EdgeInsets.all(14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delievvery Time:',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.clock,
                            color: Colors.red,
                          ),
                          Text(
                            ' 20 Minutes',
                            style: TextStyle(
                              color: Colors
                                  .black, /* fontWeight: FontWeight.bold */
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: buttombar(),
      ),
    );
  }
}
