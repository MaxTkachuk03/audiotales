import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/resouses/icons.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Selections extends StatefulWidget {
  const Selections({super.key});

  static const routeName = '/audiotales/selections';

  @override
  State<Selections> createState() => _SelectionsState();
}

class _SelectionsState extends State<Selections> {
  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(AppIcons.plus),
          onPressed: () {},
        ),
        elevation: 0,
        backgroundColor: greenCircular,
        centerTitle: true,
        title: AutoSizeText(
          S.of(context).selections,
          maxLines: 1,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: AppFonts.fontFamily,
            fontWeight: AppFonts.bold,
            fontSize: 36.0,
          ),
        ),
      ),
      body: Stack(
        children: [
          CircularWrapper(
            color: greenCircular,
            height: h / 2.4,
            shadow: const BoxShadow(
              color: greenCircularShadow,
              offset: Offset(0.0, 4.0),
              blurRadius: 25.0,
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).allinoneplace,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: white,
                      fontFamily: AppFonts.fontFamily,
                      fontWeight: AppFonts.regular,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
