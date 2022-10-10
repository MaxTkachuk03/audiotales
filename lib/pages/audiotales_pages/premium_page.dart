import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/resouses/icons.dart';
import 'package:audiotales/widgets/buttons/floating_actions_buttons.dart';
import 'package:audiotales/widgets/navigation/custom_bottomnavigator.dart';
import 'package:audiotales/widgets/navigation/drawer.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PremiumPage extends StatefulWidget {
  const PremiumPage({super.key});

  static const routeName = '/audiotales/premium';

  @override
  State<PremiumPage> createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    final double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: purple,
        title: Text(
          S.of(context).premium,
          style: const TextStyle(
            color: white,
            fontWeight: AppFonts.bold,
            fontFamily: AppFonts.fontFamily,
            fontSize: 36.0,
          ),
        ),
      ),
      drawer: NavigationDrawer(),
      bottomNavigationBar: const BottomBar(),
      body: CircularWrapper(
        color: purple,
        height: h / 2.4,
        shadow: const BoxShadow(
          color: blueCircularShadow,
          offset: Offset(0.0, 4.0),
          blurRadius: 25.0,
        ),
        child: Column(
          children: [
            Text(
              S.of(context).extendsOpportunities,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: white,
                fontWeight: AppFonts.regular,
                fontFamily: AppFonts.fontFamily,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              height: 46.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5.0,
                ),
                child: Container(
                  width: w / 1.03,
                  decoration: const BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: whiteBottomBar,
                          offset: Offset(0.0, 4.0),
                          blurRadius: 24.0)
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Text(
                        S.of(context).changePremium,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 24.0,
                          fontWeight: AppFonts.regular,
                          fontFamily: AppFonts.fontFamily,
                        ),
                      ),
                      // const SizedBox(
                      //   height: 34.0,
                      // ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: w / 2.27,
                              height: h / 3.73,
                              decoration: const BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25.0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: premiumShadow,
                                      offset: Offset(0.0, 4.0),
                                      blurRadius: 20.0)
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    S.of(context).price300,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: AppFonts.regular,
                                      fontFamily: AppFonts.fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              width: w / 2.27,
                              height: h / 3.73,
                              decoration: const BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25.0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: premiumShadow,
                                      offset: Offset(0.0, 4.0),
                                      blurRadius: 20.0)
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    S.of(context).price1800,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: AppFonts.regular,
                                      fontFamily: AppFonts.fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 51.0,),
                      //child:
                      Row(
                        children: [
                          const Spacer(flex: 3,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                S.of(context).whatGivePremium,
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: AppFonts.regular,
                                  fontFamily: AppFonts.fontFamily,
                                ),
                              ),
                              //const Spacer(),
                              //SizedBox(height: 24.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                    AppIcons.infinity,
                                  ),
                                  const SizedBox(
                                    width: 11.0,
                                  ),
                                  Text(
                                    S.of(context).infinityMemory,
                                    style: const TextStyle(
                                      color: black,
                                      fontSize: 14.0,
                                      fontWeight: AppFonts.regular,
                                      fontFamily: AppFonts.fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              //SizedBox(height: 16.0,),
                              //const Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                    AppIcons.upload,
                                  ),
                                  const SizedBox(
                                    width: 11.0,
                                  ),
                                  Text(
                                    S.of(context).allFilesSavedonCloud,
                                    style: const TextStyle(
                                      color: black,
                                      fontSize: 14.0,
                                      fontWeight: AppFonts.regular,
                                      fontFamily: AppFonts.fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              //const Spacer(),
                              //SizedBox(height: 16.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                    AppIcons.paperdownload,
                                  ),
                                  const SizedBox(
                                    width: 11.0,
                                  ),
                                  SizedBox(
                                    width: w / 1.36,
                                    child: Text(
                                      S.of(context).downloadwithoutlimites,
                                      //textAlign: TextAlign.center,
                                      softWrap: true,
                                      maxLines: 2,
                                      //minFontSize: 14.0,
                                      style: const TextStyle(
                                        overflow: TextOverflow.clip,
                                        color: black,
                                        fontSize: 14.0,
                                        fontWeight: AppFonts.regular,
                                        fontFamily: AppFonts.fontFamily,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              //const Spacer(flex: 2,),
                              //const Spacer(),
                              FloatingABWrapper(
                                onTap: () {
                                  // Navigator.pushNamed(
                                  //     context, RegistrationPageEnd.routeName);
                                },
                                text: S.of(context).premiumMounce,
                              ),
                            ],
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                        ],
                      ),
                      const Spacer(
                            flex: 2,
                          ),
                      //),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 9.0,
            ),
          ],
        ),
      ),
    );
  }
}
