import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:toktok/addon/images.network.dart';

class categories extends StatelessWidget {
  const categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  navigator!.pushNamed('/listmenu', arguments: {
                    '1': 'เส้นใหญ่',
                    '2': 'เส้นเล็ก',
                    '3': 'เส้นหมี่',
                    '4': 'วุ้นเส้น',
                    '5': 'หมี่เหลือง',
                    '6': 'มาม่า',
                    'p1':
                        'https://png.pngtree.com/png-vector/20201129/ourmid/pngtree-gyudon-rice-png-image_2422725.jpg',
                    'p2':
                        'https://png.pngtree.com/png-vector/20201128/ourmid/pngtree-noodles-png-image_2423456.jpg',
                    'p3':
                        'https://e7.pngegg.com/pngimages/1003/302/png-clipart-noodle-noodle.png',
                    'p4':
                        'https://png.pngtree.com/png-vector/20201128/ourmid/pngtree-hot-and-sour-crystal-vermicelli-png-image_2450356.jpg',
                    'p5':
                        'https://png.pngtree.com/png-clipart/20230427/original/pngtree-delicious-transparent-noodle-food-png-image_9116812.png',
                    'p6':
                        'https://www.mama.co.th/imgadmins/img_product_cate/big/cate_big_ex20180409150918.jpg',
                  });
                  // print('object');
                },
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity((0.5)),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(0, 3))
                          ]),
                      child: Image.network(
                        image_network().noodles,
                        height: 50,
                        width: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'ก๋วยเตี๋ยว',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  navigator!.pushNamed('/listmenu', arguments: {
                    '1': 'ลูกชิ้นกุ้ง',
                    '2': 'ลูกชิ้นหมู',
                    '3': 'ลูกชิ้นปลา',
                    '4': 'หมูห่อสาหร่าย',
                    '5': 'ปูอัด',
                    '6': 'ลูกชิ้นเนื่อ',
                    'p1':
                        'https://e7.pngegg.com/pngimages/1022/113/png-clipart-yong-tau-foo-fish-ball-meatball-tom-yum-thai-chilli-food-animals-thumbnail.png',
                    'p2':
                        'https://png.pngtree.com/png-vector/20201129/ourmid/pngtree-farmhouse-lean-meatballs-png-image_2451921.jpg',
                    'p3':
                        'https://png.pngtree.com/png-vector/20201129/ourmid/pngtree-hot-pot-ingredients-fish-balls-png-image_2431974.jpg',
                    'p4':
                        'https://s359.kapook.com/pagebuilder/afda7c77-fb13-42e8-81fd-882c5318ebdd.jpg',
                    'p5':
                        'https://e7.pngegg.com/pngimages/1016/502/png-clipart-hot-pot-barbecue-seafood-take-out-crab-pot-crab-stick-barbecue-png-material-thumbnail.png',
                    'p6':
                        'https://png.pngtree.com/png-vector/20211022/ourmid/pngtree-crab-stick-party-crab-meat-stick-kitchen-crab-willow-png-image_3986237.png',
                  });
                },
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity((0.5)),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(0, 3))
                          ]),
                      child: Image.network(
                        image_network().meatball,
                        height: 50,
                        width: 50,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'ลูกชิ้น',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  navigator!.pushNamed('/listmenu', arguments: {
                    '1': 'ชาเขียว',
                    '2': 'กาแฟ',
                    '3': 'ชาเย็น',
                    '4': 'นมเย็น',
                    '5': 'โกโก้',
                    '6': 'เผือก',
                    'p1':
                        'https://sainoms.com/wp-content/uploads/2019/04/%E0%B8%99%E0%B8%A1%E0%B9%80%E0%B8%82%E0%B8%B5%E0%B8%A2%E0%B8%A7-%E0%B8%8A%E0%B8%B2%E0%B9%80%E0%B8%82%E0%B8%B5%E0%B8%A2%E0%B8%A7.png',
                    'p2':
                        'https://img.lovepik.com/free-png/20211124/lovepik-coffee-png-image_401097948_wh1200.png',
                    'p3':
                        'https://www.gateauxhouse.co.th/images/ready-template/crop-1600679553124.png',
                    'p4':
                        'https://franchise.chakaimuk.com/upload-img/MENU1:1/resize_39900/1%E0%B8%95%E0%B9%88%E0%B8%AD1_%E0%B8%8A%E0%B8%B8%E0%B8%94_39900-1-37.jpg',
                    'p5':
                        'https://obs.line-scdn.net/r/ect/ect/image_165768273687243824619c99118t100a6220',
                    'p6':
                        'https://sainoms.com/wp-content/uploads/2019/04/%E0%B8%99%E0%B8%A1%E0%B9%80%E0%B8%9C%E0%B8%B7%E0%B8%AD%E0%B8%81%E0%B8%AB%E0%B8%AD%E0%B8%A1.png',
                  });
                },
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity((0.5)),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(0, 3))
                          ]),
                      child: Image.network(
                        image_network().cha_nom,
                        height: 50,
                        width: 50,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'ชานม',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity((0.5)),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(0, 3))
                        ]),
                    child: Image.network(
                      image_network().ice_creme,
                      height: 50,
                      width: 50,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'ไอศครีม',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity((0.5)),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(0, 3))
                        ]),
                    child: Image.network(
                      image_network().snack,
                      height: 50,
                      width: 50,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'ขนม',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
