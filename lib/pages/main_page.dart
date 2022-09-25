import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/resouses/icons.dart';
import 'package:audiotales/widgets/navigation/custom_bottomnavigator.dart';
import 'package:audiotales/widgets/navigation/drawer.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static const routeName = '/audiotales/main';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  final int _selectPage = 2;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: purple,
      ),
      drawer: const NavigationDrawer(),
      bottomNavigationBar: //const BottomBar(),
          BottomBar(
        currentTab: _selectPage,
        onSelected: () {
          setState(() {
            _selectPage;
          });
        },
      ),
      body: CircularWrapper(
        color: purple,
        child: Column(
          children: [
            SizedBox(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Spacer(),
                      AutoSizeText(S.of(context).selections,
                          style: const TextStyle(
                              color: white,
                              fontSize: 24.0,
                              fontWeight: AppFonts.regular)),
                      const Spacer(flex: 6),
                      AutoSizeText(S.of(context).openAll,
                          style: const TextStyle(
                              color: white,
                              fontSize: 14.0,
                              fontWeight: AppFonts.regular)),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 240.0,
                        width: w / 2.26,
                        decoration: const BoxDecoration(
                          color: green,
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 23.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Spacer(),
                              AutoSizeText(
                                S.of(context).set,
                                textAlign: TextAlign.center,
                                maxLines: 3,
                                style: const TextStyle(
                                    color: white,
                                    fontWeight: AppFonts.regular,
                                    fontSize: 20.0),
                              ),
                              const Spacer(),
                              Container(
                                decoration: const BoxDecoration(),
                                child: Text(
                                  S.of(context).add,
                                  style: const TextStyle(
                                      color: white,
                                      fontWeight: AppFonts.regular,
                                      fontSize: 14.0,
                                      decoration: TextDecoration.underline,
                                      decorationThickness: 1.0
                                      // shadows: [
                                      //   Shadow(
                                      //     color: white,
                                      //     offset: Offset(0, 6)
                                      //   )
                                      // ]
                                      ),
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 112.0,
                            width: w / 2.26,
                            decoration: const BoxDecoration(
                              color: orangeLight,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                            ),
                            alignment: AlignmentDirectional.center,
                            child: AutoSizeText(
                              S.of(context).here,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: white,
                                  fontWeight: AppFonts.regular,
                                  fontSize: 20.0),
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          Container(
                            height: 112.0,
                            width: w / 2.26,
                            alignment: AlignmentDirectional.center,
                            decoration: const BoxDecoration(
                              color: blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: Text(
                              S.of(context).andHere,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: white,
                                  fontWeight: AppFonts.regular,
                                  fontSize: 20.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //const Spacer(),
                ],
              ),
            ),
            const SizedBox(height: 44.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  children: [
                    Container(
                      width: w,
                      decoration: const BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0)),
                          boxShadow: [
                            BoxShadow(
                                color: whiteBottomBar,
                                offset: Offset(0, 4.0),
                                blurRadius: 24.0)
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                AutoSizeText(S.of(context).audiorecord,
                                    style: const TextStyle(
                                        color: black,
                                        fontSize: 24.0,
                                        fontWeight: AppFonts.regular)),
                                const Spacer(),
                                AutoSizeText(S.of(context).openAll,
                                    style: const TextStyle(
                                        color: black,
                                        fontSize: 14.0,
                                        fontWeight: AppFonts.regular)),
                              ],
                            ),
                          ),
                          //const Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 50.0),
                            child: AutoSizeText(
                              S.of(context).recordedAudio,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              style: const TextStyle(
                                  color: lightBlack,
                                  fontSize: 20.0,
                                  fontWeight: AppFonts.regular),
                            ),
                          ),
                          SvgPicture.asset(AppIcons.arrow)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
