// ignore_for_file: file_names

import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/images.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:flutter/material.dart';

class LoginedPageStart extends StatefulWidget {
  const LoginedPageStart({Key? key}) : super(key: key);

  @override
  State<LoginedPageStart> createState() => _LoginedPageStartState();
}

class _LoginedPageStartState extends State<LoginedPageStart> {
  // @override
  // void initState() {
  //   Timer(const Duration(seconds: 3), () {
  //     Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //             builder: (context) => const LoginedPageStart()));
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    double m = MediaQuery.of(context).size.height;
    double n = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: m,
        width: n,
        child: Column(
          children: [
            CircularWrapper(
              child: Column(
                children: [
                  Padding(
                          padding: EdgeInsets.fromLTRB(0, m / 8, 0, 0),
                          child: Text(
                            S.of(context).splashScreenText,
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w700,
                              fontSize: m / 16,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(n / 3, 0, 0, 0),
                          child: Text(
                            S.of(context).underMemoryBox,
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w400,
                              fontSize: m / 60,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(n/20, m / 6, n/20, 0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        boxShadow: [ BoxShadow(
                          color: shadow,
                          offset: Offset(0.0, 4.0),
                          blurRadius: 7.0,
                        ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(21.0,25.0,21.0,25.0),
                        child: Text(
                          S.of(context).weGlad,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(n / 20, m / 10, n / 20, 0),
                    child: AppImages.heart,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(n / 20, m / 10, n / 20, 0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        boxShadow: [
                          BoxShadow(
                            color: shadow,
                            offset: Offset(0.0, 4.0),
                            blurRadius: 7.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(21.0, 25.0, 21.0, 25.0),
                        child: Text(
                          S.of(context).adultText,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*

 */