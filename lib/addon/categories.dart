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
                    '1': {
                      'name': 'เส้นใหญ่',
                      'image': 'assets/images/เส้นใหญ่.jpg',
                      'total': '35',
                      'detail': 'เส้นใหญ่เหนียวนุ่มชุ่มคอ',
                      'time': '5',
                    },
                    '2': {
                      'name': 'เส้นเล็ก',
                      'image': 'assets/images/เส้นเล็ก.jpg',
                      'total': '35',
                      'detail': 'เส้นเล็กเหนียวนุ่มชุ่มคอ',
                      'time': '7',
                    },
                    '3': {
                      'name': 'เส้นหมี่',
                      'image': 'assets/images/เส้นหมี่.png',
                      'total': '35',
                      'detail': 'เส้นหมี่เหนียวนุ่มชุ่มคอ',
                      'time': '3',
                    },
                    '4': {
                      'name': 'วุ้นเส้น',
                      'image': 'assets/images/วุ้นเส้น.jpg',
                      'total': '35',
                      'detail': 'วุ้นเส้นเหนียวนุ่มชุ่มคอ',
                      'time': '4',
                    },
                    '5': {
                      'name': 'หมี่เหลือง',
                      'image': 'assets/images/หมี่เหลือง.jpg',
                      'total': '35',
                      'detail': 'หมี่เหลืองเหนียวนุ่มชุ่มคอ',
                      'time': '8',
                    },
                    '6': {
                      'name': 'มาม่า',
                      'image': 'assets/images/มาม่า.jpg',
                      'total': '35',
                      'detail': 'มาม่าเหนียวนุ่มชุ่มคอ',
                      'time': '12',
                    },
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
                      child: Image.asset(
                        'assets/images/ก๋วยเตี๋ยว.jpg',
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
                    '1': {
                      'name': 'ฮอทดอก',
                      'image': 'assets/images/ฮอทดอก.jpg',
                      'total': '5',
                      'detail': 'ฮอทดอกนึ่งร้อนสดใหม่ทุกวัน',
                      'time': '0',
                    },
                    '2': {
                      'name': 'ลูกชิ้นหมู',
                      'image': 'assets/images/ลูกชิ้นหมู.jpg',
                      'total': '5',
                      'detail':
                          'ลูกชิ้นหมูนึ่งร้อนสดใหม่ทุกวันน้ำจิ้มก็อร้อยอร่อย',
                      'time': '0',
                    },
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
                    '1': {
                      'name': 'กาแฟเย็น',
                      'image': 'assets/images/ชาทั้งหลาย.jpg',
                      'total': '20',
                      'detail':
                          'กาแฟเย็นชงสดใหม่เพิ่มน้ำตาลในเลือดเพื่อความสดชื่นในทุกวัน',
                      'time': '5',
                    },
                    '2': {
                      'name': 'ชาเขียว',
                      'image': 'assets/images/ชาทั้งหลาย.jpg',
                      'total': '20',
                      'detail':
                          'ชาเขียวย็นชงสดใหม่เพิ่มน้ำตาลในเลือดเพื่อความสดชื่นในทุกวัน',
                      'time': '7',
                    },
                    '3': {
                      'name': 'ชาเย็น',
                      'image': 'assets/images/ชาทั้งหลาย.jpg',
                      'total': '20',
                      'detail':
                          'ชาเย็นชงสดใหม่เพิ่มน้ำตาลในเลือดเพื่อความสดชื่นในทุกวัน',
                      'time': '7',
                    },
                    '4': {
                      'name': 'โกโก้เย็น',
                      'image': 'assets/images/ชาทั้งหลาย.jpg',
                      'total': '20',
                      'detail':
                          'โกโก้เย็นชงสดใหม่เพิ่มน้ำตาลในเลือดเพื่อความสดชื่นในทุกวัน',
                      'time': '7',
                    },
                    '5': {
                      'name': 'เฉาก้วย',
                      'image': 'assets/images/ชาทั้งหลาย.jpg',
                      'total': '20',
                      'detail':
                          'เฉาก้วยเย็นชงสดใหม่เพิ่มน้ำตาลในเลือดเพื่อความสดชื่นในทุกวัน',
                      'time': '7',
                    },
                    '6': {
                      'name': 'โอวัลติน',
                      'image': 'assets/images/ชาทั้งหลาย.jpg',
                      'total': '20',
                      'detail':
                          'โอวัลตินเย็นชงสดใหม่เพิ่มน้ำตาลในเลือดเพื่อความสดชื่นในทุกวัน',
                      'time': '7',
                    },
                    '7': {
                      'name': 'นมเย็น',
                      'image': 'assets/images/ชาทั้งหลาย.jpg',
                      'total': '20',
                      'detail':
                          'นมเย็นชงสดใหม่เพิ่มน้ำตาลในเลือดเพื่อความสดชื่นในทุกวัน',
                      'time': '7',
                    },
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
                      child: Image.asset(
                        'assets/images/ชานม.jpg',
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
            InkWell(
              onTap: () {
                navigator!.pushNamed('/listmenu', arguments: {
                  '1': {
                    'name': 'แบบแท่ง',
                    'image': 'assets/images/ไอศครีม.jpg',
                    'total': '20',
                    'detail': 'แท่ง อร่อยเย็นชื่นใจ',
                    'time': '0',
                  },
                  '2': {
                    'name': 'แบบโคลน',
                    'image': 'assets/images/ไอศครีม.jpg',
                    'total': '10',
                    'detail': 'แบบโคลน อร่อยเย็นชื่นใจ',
                    'time': '0',
                  },
                  '3': {
                    'name': 'แบบถ้วย',
                    'image': 'assets/images/ไอศครีม.jpg',
                    'total': '30',
                    'detail': 'แบบถ้วย อร่อยเย็นชื่นใจ',
                    'time': '0',
                  },
                });
              },
              child: Padding(
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
                      child: Image.asset(
                        'assets/images/ไอศครีม.jpg',
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
            ),
            InkWell(
              onTap: () {
                navigator!.pushNamed('/listmenu', arguments: {
                  '1': {
                    'name': 'เลย์ดั้งเดิม',
                    'image': 'assets/images/เลย์ดั้งเดิม.jpg',
                    'total': '20',
                    'detail': 'ขนมขบเคี้ยวใว้กินหลังกินก๋วยเตี๋ยวอิ่ม',
                    'time': '0',
                  },
                  '2': {
                    'name': 'เลย์สาหร่าย',
                    'image': 'assets/images/เลย์สาหร่าย.jpg',
                    'total': '10',
                    'detail': 'ขนมขบเคี้ยวใว้กินหลังกินก๋วยเตี๋ยวอิ่ม',
                    'time': '0',
                  },
                  '3': {
                    'name': 'เลย์หัวหอม',
                    'image': 'assets/images/เลย์หัวหอม.jpg',
                    'total': '30',
                    'detail': 'ขนมขบเคี้ยวใว้กินหลังกินก๋วยเตี๋ยวอิ่ม',
                    'time': '0',
                  },
                  '4': {
                    'name': 'เลย์บาบีคิว',
                    'image': 'assets/images/เลย์บาบีคิว.jpg',
                    'total': '30',
                    'detail': 'ขนมขบเคี้ยวใว้กินหลังกินก๋วยเตี๋ยวอิ่ม',
                    'time': '0',
                  },
                });
              },
              child: Padding(
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
            ),
          ],
        ),
      ),
    );
  }
}
