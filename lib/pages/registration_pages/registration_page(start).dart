// ignore_for_file: file_names
import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/src/wrappers/buttons.dart';
import 'package:audiotales/src/wrappers/circular_wrapper.dart';
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
                  Padding(padding: EdgeInsets.fromLTRB(0, m / 8, 0, 0)),
                  Text(
                    S.of(context).splashScreenText,
                    style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.w700,
                      fontSize: m / 16,
                      fontStyle: FontStyle.normal,
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
                    padding: EdgeInsets.fromLTRB(0, m / 5, 0, 0),
                    child: Text(
                      S.of(context).hello,
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.w400,
                        fontSize: m / 30,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(n/20, m/30, n/20, 0),
                    child: Text(
                      S.of(context).presentText,
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.w400,
                        fontSize: m / 50,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(n/20, m/500, n/20, 0),
                    child: Text(
                      S.of(context).presentText2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.w400,
                        fontSize: m / 50,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, m/15, 0, 0),
                    child: const FloatingABWrapper(),
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
