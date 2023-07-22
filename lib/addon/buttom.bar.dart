import 'package:flutter/material.dart';

class buttomBar extends StatefulWidget {
  final double initialTotal;
  final ValueChanged<int> onCountUpdated;
  final onPress;

  const buttomBar(
      {Key? key,
      required this.initialTotal,
      required this.onCountUpdated,
      this.onPress})
      : super(key: key);

  @override
  _buttomBarState createState() => _buttomBarState();
}

class _buttomBarState extends State<buttomBar> {
  late int count;
  late double total;

  @override
  void initState() {
    super.initState();
    count = 1;
    total = widget.initialTotal;
  }

  @override
  void didUpdateWidget(buttomBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialTotal != oldWidget.initialTotal) {
      setState(() {
        total = widget.initialTotal;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
            spreadRadius: 3,
            offset: Offset(0, 3),
          ),
        ],
      ),
      height: 50,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Text(
                  'รวม:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(width: 15),
                Text(
                  total.toStringAsFixed(0),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(width: 15),
                const Text(
                  'บาท',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
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
              onPressed: widget.onPress,
              child: const Text(
                'หยิบใส่ตะกล้า',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 19,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
