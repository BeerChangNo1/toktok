import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buttombar extends StatelessWidget {
  const buttombar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 10,
              spreadRadius: 3,
              offset: Offset(0, 3)),
        ],
      ),
      // margin: EdgeInsets.all(20),
      height: 50,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Text(
                  'Total:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  ' \$80',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 20),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'สั่งซื้อ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 19),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
