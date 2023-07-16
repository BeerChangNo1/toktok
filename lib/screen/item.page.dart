import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:toktok/addon/appbar_global.dart';
import 'package:toktok/addon/images.network.dart';

import '../addon/buttom.bar.dart';

class itempage extends StatefulWidget {
  itempage({Key? key}) : super(key: key);

  @override
  _itempageState createState() => _itempageState();
}

class _itempageState extends State<itempage> {
  int count = 1;
  // double total = 0.0;

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final name = arguments['name'];
    final image = arguments['image'];
    final totalString = arguments['total'];
    final detail = arguments['detail'];
    final time = arguments['time'];
    double total = double.parse(totalString);
    total = double.parse(totalString) * count;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView(
          children: [
            appbar(
              icon: Icon(Icons.arrow_back),
              advancedDrawerController: () {
                navigator!.pop();
                // _advancedDrawerController.showDrawer();
              },
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Image.asset(image),
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
                      '$totalString บาท',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
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
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Container(
                      height: 40,
                      // width: 100,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {
                              if (count > 1) {
                                setState(() {
                                  count--;
                                  total = double.parse(totalString) * count;
                                });
                                print(total);
                              }
                            },
                            icon: const Icon(
                              CupertinoIcons.minus,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                          Text(
                            count.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                count++;
                                total = double.parse(totalString) * count;
                              });
                              print(total);
                            },
                            icon: const Icon(
                              CupertinoIcons.plus,
                              color: Colors.white,
                              size: 15,
                            ),
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
              child: Padding(
                padding: EdgeInsets.all(14),
                child: Text(
                  detail,
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
              child: Padding(
                padding: EdgeInsets.all(14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'เวลาในการเตรียมอาหาร:',
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
                          ' $time นาที',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
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
      bottomNavigationBar: buttomBar(
        initialTotal: total,
        onCountUpdated: (newCount) {
          setState(() {
            count = newCount;
            total = double.parse(totalString) * count;
          });
        },
      ),
    );
  }
}
