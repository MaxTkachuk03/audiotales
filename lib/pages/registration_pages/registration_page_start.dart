import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/pages/registration_pages/registration_page_numbers.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/widgets/buttons/floating_actions_buttons.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RegistrationPageStart extends StatefulWidget {
  const RegistrationPageStart({Key? key}) : super(key: key);

  static const routeName = '/registration_pages/registration_page_start';

  @override
  State<RegistrationPageStart> createState() => _RegistrationPageStartState();
}

class _RegistrationPageStartState extends State<RegistrationPageStart> {
  @override
  Widget build(BuildContext context) {
    final Size h = MediaQuery.of(context).size;
    return Scaffold(
      body: CircularWrapper(
        color: purple,
        child: Column(
          children: [
            SizedBox(
              height: h.height / 2.71515152,
              child: Column(
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
                    ),
                  ),
                  AutoSizeText(
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
            const SizedBox(height: 52.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      S.of(context).hello,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: black,
                        fontWeight: AppFonts.regular,
                        fontSize: 24.0,
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    AutoSizeText(
                      S.of(context).presentText,
                      textAlign: TextAlign.center,
                      maxLines: 4,
                      style: const TextStyle(
                        color: black,
                        fontWeight: AppFonts.regular,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 48.0),
                    FloatingABWrapper(
                      onTap: () {
                        Navigator.pushNamed(
                            context, RegistrationPageNumbers.routeName);
                      },
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
