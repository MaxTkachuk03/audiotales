// ignore_for_file: file_names

import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/src/colors/colors.dart';
import 'package:audiotales/src/images/images.dart';
import 'package:audiotales/widgets/clipper.dart';
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
    double n = MediaQuery.of(context).size.width / 20;
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  ClipPath(
                    clipper: MyCustomClipper(),
                    child: Container(
                      color: registrationPage,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.fromLTRB(0, m / 8, 0, 0)),
                          Text(
                            S.of(context).splashScreenText,
                            style: TextStyle(
                              color: memoryBoxSplashScreen,
                              fontWeight: FontWeight.w700,
                              fontSize: m / 16,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(n * 7, 0, 0, 0),
                            child: Text(
                              S.of(context).underMemoryBox,
                              style: TextStyle(
                                color: memoryBoxSplashScreen,
                                fontWeight: FontWeight.w400,
                                fontSize: m / 60,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                 Padding(
                    padding: EdgeInsets.fromLTRB(0, m / 2.3, 0, 0),
                    child: glade,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, m / 1.5, 0, 0),
                    child: stroke,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}