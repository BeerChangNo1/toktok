import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:toktok/addon/style.dart';

class appbar extends StatelessWidget {
  const appbar(
      {super.key,
      required this.ontaplaft,
      required this.ontapright,
      this.icon,
      this.icon2});

  final ontaplaft;
  final ontapright;
  final icon;
  final icon2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: ontaplaft,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: icon,
            ),
          ),
          InkWell(
            onTap: ontapright,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: icon2,
            ),
          ),
          // InkWell(
          //   onTap: () {},
          //   child: Container(
          //     padding: EdgeInsets.all(8),
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(20),
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.withOpacity(0.5),
          //           spreadRadius: 2,
          //           blurRadius: 10,
          //           offset: Offset(0, 3),
          //         )
          //       ],
          //     ),
          //     child: Icon(Icons.notifications_sharp),
          //   ),
          // ),
        ],
      ),
    );
  }
}
