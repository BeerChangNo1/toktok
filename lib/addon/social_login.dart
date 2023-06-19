import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toktok/addon/style.dart';

class socialLogin extends StatelessWidget {
  const socialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            '-Or sign in with-',
            style: TextStyle(
                color: maincolors.textColor, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.6,
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    log('Sign In With Google');
                  },
                  child: Container(
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 7)
                        ]),
                    child: SvgPicture.asset(
                      'assets/images/google.svg',
                      height: 40,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    log('Sign In With facebook');
                  },
                  child: Container(
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 7)
                        ]),
                    child: SvgPicture.asset(
                      'assets/images/facebook.svg',
                      height: 40,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    log('Sign In With twitter');
                  },
                  child: Container(
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 7)
                        ]),
                    child: SvgPicture.asset(
                      'assets/images/twitter.svg',
                      height: 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
