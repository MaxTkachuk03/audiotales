import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/widgets/buttons/floating_actions_buttons.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RegistrationPageStart extends StatefulWidget {
  const RegistrationPageStart({Key? key}) : super(key: key);

  @override
  State<RegistrationPageStart> createState() => _RegistrationPageStartState();
}

class _RegistrationPageStartState extends State<RegistrationPageStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CircularWrapper(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Expanded(
            //   flex: 1,
            //   child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AutoSizeText(
                    S.of(context).splashScreenText,
                    maxFontSize: 48.0,
                    style: const TextStyle(
                      color: white,
                      fontWeight: AppFonts.bold,
                      fontSize: 48.0,
                      fontFamily: AppFonts.fontFamily,
                    ),
                  ),
                  AutoSizeText(
                    S.of(context).underMemoryBox,
                    style: const TextStyle(
                      color: white,
                      fontWeight: AppFonts.regular,
                      fontSize: 14.0,
                      fontFamily: AppFonts.fontFamily,
                    ),
                  ),
                ],
              ),
           // ),
            // Expanded(
            //   flex: 2,
            //   child: 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).hello,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: black,
                        fontWeight: AppFonts.regular,
                        fontSize: 24.0,
                        fontFamily: AppFonts.fontFamily,
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    Text(
                      S.of(context).presentText,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: black,
                        fontWeight: AppFonts.regular,
                        fontSize: 16.0,
                        fontFamily: AppFonts.fontFamily,
                      ),
                    ),
                    const SizedBox(height: 48.0),
                    const FloatingABWrapper(),
                  ],
                ),
              ),
          // ),
          ],
        ),
      ),
    );
  }
}
