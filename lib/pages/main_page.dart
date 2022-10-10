import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/pages/audiotales_pages/profile_page.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/resouses/icons.dart';
import 'package:audiotales/widgets/buttons/text_buttons.dart';
import 'package:audiotales/widgets/navigation/custom_bottomnavigator.dart';
import 'package:audiotales/widgets/navigation/drawer.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

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

  // final int _selectPage = 0;

  // List<String> widgets = [
  //   MainPage.routeName,
  //   Profile.routeName,
  // ];

  // void onTap() {
  //   setState(
  //     () {
  //       //_selectPage = index;
  //       Navigator.pushNamed(context, widgets.elementAt(_selectPage));
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: purple,
      ),
      drawer: NavigationDrawer(),
      bottomNavigationBar: const BottomBar(
          // currentTab: 3,
          // onSelected: onTap,
          ),
      body: CircularWrapper(
        color: purple,
        height: h / 2.4,
        shadow: const BoxShadow(
          color: shadowCircular,
          offset: Offset(0.0, 4.0),
          blurRadius: 35.0,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: SlidingUpPanel(
            minHeight: h / 2.65,
            maxHeight: h,
            panel: const _SlidingUpPanelWrapper(),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            ),
            boxShadow: const [
              BoxShadow(
                color: whiteBottomBar,
                offset: Offset(0, 4.0),
                blurRadius: 24.0,
              )
            ],
            body: Column(
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          AutoSizeText(
                            S.of(context).selections,
                            style: const TextStyle(
                                color: white,
                                fontSize: 24.0,
                                fontWeight: AppFonts.regular),
                          ),
                          const Spacer(flex: 6),
                          TextButtonWrapperAllOpen(
                            color: white,
                            onTap: () {},
                          ),
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
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 23.0),
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
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    decoration: const BoxDecoration(),
                                    child: const TextButtonAdd(),
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
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                ),
                                alignment: AlignmentDirectional.center,
                                child: AutoSizeText(
                                  S.of(context).here,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: white,
                                    fontWeight: AppFonts.regular,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              Container(
                                height: 112.0,
                                width: w / 2.26,
                                alignment: AlignmentDirectional.center,
                                decoration: const BoxDecoration(
                                  color: blue,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                ),
                                child: Text(
                                  S.of(context).andHere,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: white,
                                    fontWeight: AppFonts.regular,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //const SizedBox(height: 44.0),
                    ],
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

class _SlidingUpPanelWrapper extends StatelessWidget {
  const _SlidingUpPanelWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).audiorecord,
                style: const TextStyle(
                  color: black,
                  fontSize: 24.0,
                  fontWeight: AppFonts.regular,
                ),
              ),
              const Spacer(),
              TextButtonWrapperAllOpen(
                color: black,
                onTap: () {},
              ),
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: AutoSizeText(
            S.of(context).recordedAudio,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: const TextStyle(
              color: lightBlack,
              fontSize: 20.0,
              fontWeight: AppFonts.regular,
            ),
          ),
        ),
        const Spacer(),
        SvgPicture.asset(AppIcons.arrow),
        const Spacer(
          flex: 6,
        ),
      ],
    );
  }
}
