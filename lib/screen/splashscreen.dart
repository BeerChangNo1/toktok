// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:toktok/screen/hompage.dart';
// import 'package:toktok/screen/login.dart';

// import '../authentication/authen.dart';

// class SplashScreen extends StatelessWidget {
//   final AuthenticationService authService = AuthenticationService();

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<bool>(
//       future: authService.checkLoginStatus(),
//       builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           // หน้าโหลดระหว่างตรวจสอบสถานะการเข้าสู่ระบบ
//           return Scaffold(
//             body: Center(
//               child: CircularProgressIndicator(),
//             ),
//           );
//         } else {
//           if (snapshot.data == true) {
//             // ผู้ใช้เข้าสู่ระบบแล้ว นำทางไปยังหน้าหลัก
//             return homepage();
//           } else {
//             // ผู้ใช้ยังไม่ได้เข้าสู่ระบบ นำทางไปยังหน้าเข้าสู่ระบบ
//             return loginpage();
//           }
//         }
//       },
//     );
//   }
// }
