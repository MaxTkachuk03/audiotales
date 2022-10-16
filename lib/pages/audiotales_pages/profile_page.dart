import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/borders.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/resouses/images.dart';
import 'package:audiotales/widgets/buttons/text_buttons.dart';
import 'package:audiotales/widgets/navigation/custom_bottomnavigator.dart';
import 'package:audiotales/widgets/navigation/drawer.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  static const routeName = '/audiotales/profile';

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    final double w = MediaQuery.of(context).size.width;
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        //excludeHeaderSemantics: false,
        centerTitle: true,
        title: Text(
          S.of(context).profile,
          style: const TextStyle(
            color: white,
            fontWeight: AppFonts.bold,
            fontFamily: AppFonts.fontFamily,
            fontSize: 36.0,
          ),
        ),
        elevation: 0,
        backgroundColor: purple,
      ),
      drawer: NavigationDrawer(),
      bottomNavigationBar: const BottomBar(),
      body: Stack(
        children: [
          CircularWrapper(
            color: purple,
            height: h / 2.4,
            shadow: const BoxShadow(
              color: purpleCircularShadow,
              offset: Offset(0.0, 4.0),
              blurRadius: 25.0,
            ),
          ),
          SingleChildScrollView(
            clipBehavior: Clip.hardEdge,
            child: SizedBox(
              height: h, // / 1.25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).yourpiece,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: white,
                      fontWeight: AppFonts.regular,
                      fontFamily: AppFonts.fontFamily,
                      fontSize: 16.0,
                    ),
                  ),
                  //const Spacer(flex: 1,),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: w / 1.9,
                    height: h / 4,
                    decoration: const BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(Radius.circular(24.0)),
                      boxShadow: [
                        BoxShadow(
                          color: pictureShadow,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 20.0,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      AppImages.profile,
                    ),
                  ),
                  //const Spacer(),
                  const SizedBox(
                    height: 14,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 45.0,
                      ),
                      child: Column(
                        children: [
                          const Text(
                            "Kolya",
                            style: TextStyle(
                              color: black,
                              fontWeight: AppFonts.regular,
                              fontFamily: AppFonts.fontFamily,
                              fontSize: 24.0,
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(41.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: shadow,
                                  offset: Offset(0.0, 4.0),
                                  blurRadius: 11.0,
                                ),
                              ],
                            ),
                            child: TextField(
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(10.0),
                                fillColor: white,
                                filled: true,
                                focusedBorder: border,
                                enabledBorder: border,
                                border: border,
                              ),
                              keyboardType: TextInputType.phone,
                              inputFormatters: [
                                // MaskedInputFormatter('+## (###) ### ### #'),
                                PhoneInputFormatter(),
                              ],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: black,
                                fontWeight: AppFonts.regular,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const TextButtonEdit(),
                          const SizedBox(
                            height: 66.0,
                          ),
                          const TextButtonPremium(),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: black,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: const LinearProgressIndicator(
                                value: 0.3,
                                minHeight: 24.0,
                                backgroundColor: white,
                                color: orange,
                              ),
                            ),
                          ),
                          // const SizedBox(
                          //   height: 8.0,
                          // ),
                          const Text(
                            "150/500",
                            style: TextStyle(
                              color: black,
                              fontWeight: AppFonts.regular,
                              fontFamily: AppFonts.fontFamily,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      TextButtonQuit(),
                      TextButtonDeleteAccount(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
