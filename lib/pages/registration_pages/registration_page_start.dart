import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/colors.dart';
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
    //double m = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CircularWrapper(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Expanded(
            //   child:
            //  Column(
            //      children: [
            //Padding(padding: EdgeInsets.only(top: m / 5)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AutoSizeText(
                  S.of(context).splashScreenText,
                  maxFontSize: 48.0,
                  style: const TextStyle(
                    color: white,
                    fontWeight: FontWeight.w700,
                    fontSize: 48.0,
                    fontFamily: 'TTNorms',
                  ),
                ),
                Text(
                  S.of(context).underMemoryBox,
                  style: const TextStyle(
                    color: white,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'TTNorms',
                  ),
                ),
              ],
            ),

            // FittedBox(
            //   fit: BoxFit.scaleDown,
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 100.0),
            //     child: Column(
            //       children: [

            //       ],
            //     ),
            //   ),
            // ),
            const SizedBox(height: 158.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).hello,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: black,
                        fontWeight: FontWeight.w400,
                        fontSize: 24.0,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'TTNorms',
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    Text(
                      S.of(context).presentText,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'TTNorms',
                      ),
                    ),
                    const SizedBox(height: 48.0),
                    const FloatingABWrapper(),
                  ],
                ),
              ),
            ),
          ],
        ),
        // ],
        //  ),
        // ),
      ),
    );
  }
}
