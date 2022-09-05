// ignore_for_file: file_names
import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/src/colors/colors.dart';
import 'package:audiotales/src/wrappers/buttons.dart';
import 'package:audiotales/widgets/clipper.dart';
import 'package:flutter/material.dart';

class RegistrationPageStart extends StatefulWidget {
  const RegistrationPageStart({Key? key}) : super(key: key);

  @override
  State<RegistrationPageStart> createState() => _RegistrationPageStartState();
}

class _RegistrationPageStartState extends State<RegistrationPageStart> {
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
                    child: Text(
                      S.of(context).hello,
                      style: TextStyle(
                        color: helloColor,
                        fontWeight: FontWeight.w400,
                        fontSize: m / 30,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(n, m / 1.9, n, 0),
                    child: Text(
                      S.of(context).presentText,
                      style: TextStyle(
                        color: helloColor,
                        fontWeight: FontWeight.w400,
                        fontSize: m/50,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(n, m / 1.8, n, 0),
                    child: Text(
                      S.of(context).presentText2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: helloColor,
                        fontWeight: FontWeight.w400,
                        fontSize: m/50,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, m / 1.4, 0, 0),
                    child: const FloatingABWrapper(),
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