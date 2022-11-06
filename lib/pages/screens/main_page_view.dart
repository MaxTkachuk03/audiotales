import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/resouses/icons.dart';
import 'package:audiotales/widgets/buttons/text_button_add.dart';
import 'package:audiotales/widgets/buttons/text_button_all_open.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static const routeName = 'screens/mainView';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    _key.currentState?.openDrawer();
    return Scaffold(
      key: _key,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Scaffold.of(context).openDrawer(),
          icon: SvgPicture.asset(AppIcons.drawer),
        ),
        elevation: 0,
        backgroundColor: purple,
      ),
      body: Stack(
        children: [
          CircularWrapper(
            height: h / 2.4,
          ),
 Column(
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
                        //
                      ],
                    ),
                  ),
                ],
              ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SlidingUpPanel(
                  minHeight: constraints.maxHeight / 2.6,
                  maxHeight: constraints.maxHeight,
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
                );
              }
            ),
          ),
        ],
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
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 24.0,
          ),
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
          flex: 18,
        ),
      ],
    );
  }
}
