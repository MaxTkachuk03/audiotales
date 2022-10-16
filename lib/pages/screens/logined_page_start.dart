import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/resouses/icons.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginedPageStart extends StatefulWidget {
  const LoginedPageStart({Key? key}) : super(key: key);

  static const routeName = '/audiotales/logined';

  @override
  State<LoginedPageStart> createState() => _LoginedPageStartState();
}

class _LoginedPageStartState extends State<LoginedPageStart> {
  // @override
  // void initState() {
  //   Timer(const Duration(seconds: 3), () {
  //     Navigator.pushNamed(context, MainPage.routeName);
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          CircularWrapper(
            height: h / 2.4,
          ),
          Column(
            children: [
              SizedBox(
                height: h / 2.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      S.of(context).splashScreenText,
                      style: const TextStyle(
                        color: white,
                        fontWeight: AppFonts.bold,
                        fontSize: 48.0,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      S.of(context).underMemoryBox,
                      style: const TextStyle(
                        color: white,
                        fontWeight: AppFonts.regular,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 78.0),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
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
                          child: AutoSizeText(
                            S.of(context).weGlad,
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: const TextStyle(
                                color: black,
                                fontWeight: AppFonts.regular,
                                fontSize: 24.0),
                          ),
                        ),
                      ),
                      const Spacer(flex: 2),
                      // const SizedBox(
                      //   height: 59.0,
                      // ),
                      SvgPicture.asset(AppIcons.heart),
                      const Spacer(flex: 4),
                      // const SizedBox(
                      //   height: 110,
                      // ),
                      Container(
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
                          padding: const EdgeInsets.symmetric(
                            horizontal: 21.0,
                            vertical: 25.0,
                          ),
                          child: AutoSizeText(
                            S.of(context).adultText,
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            style: const TextStyle(
                                color: black,
                                fontWeight: AppFonts.regular,
                                fontSize: 14.0),
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
