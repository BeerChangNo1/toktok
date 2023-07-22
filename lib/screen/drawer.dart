import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../addon/images.network.dart';
import '../authentication/authen.dart';
// import 'package:toktok/addon/style.dart';

class drawer extends StatelessWidget {
  drawer({super.key});
  final auth = FirebaseAuth.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final AuthenticationService _authService = AuthenticationService();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: maincolors.mainColor,
        body: Container(
          // color: maincolors.mainColor,
          child: ListTileTheme(
            textColor: Colors.black,
            iconColor: Colors.black,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                    width: 128.0,
                    height: 128.0,
                    margin: const EdgeInsets.only(
                      top: 24.0,
                      bottom: 64.0,
                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      color: Colors.black26,
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(image_network().snack)),
                ListTile(
                  onTap: () {
                    navigator!.pop();
                    navigator?.pushNamed('/homepage');
                  },
                  leading: const Icon(
                    Icons.home_rounded,
                    color: Colors.red,
                  ),
                  title: const Text(
                    'Home',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.account_circle_rounded,
                    color: Colors.red,
                  ),
                  title: const Text(
                    'My Account',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  onTap: () {
                    // navigator!.pop();

                    navigator?.pushNamed('/cartpage');
                  },
                  leading: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.red,
                  ),
                  title: const Text(
                    'My Orders',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  title: const Text(
                    'My Wish List',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(
                    CupertinoIcons.settings,
                    color: Colors.red,
                  ),
                  title: const Text(
                    'Setting',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  onTap: () async {
                    try {
                      _authService.logout();
                      await _auth.signOut();
                      navigator!.pop();
                      navigator!.pushNamed("/loginpage");
                      // ทำงานอื่นๆที่คุณต้องการหลังจากออกจากระบบ
                    } catch (e) {
                      // จัดการข้อผิดพลาดในการออกจากระบบ
                      print('เกิดข้อผิดพลาดในการออกจากระบบ: $e');
                    }
                  },
                  leading: const Icon(
                    Icons.logout,
                    color: Colors.red,
                  ),
                  title: const Text(
                    'Log Out',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child: const Text(
                      'Terms of Service | Privacy Policy',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
