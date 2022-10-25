import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/resouses/icons.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Audiorecords extends StatefulWidget {
  const Audiorecords({super.key});

  static const routeName = '/audiotales/audiorecords';

  @override
  State<Audiorecords> createState() => _AudiorecordsState();
}

class _AudiorecordsState extends State<Audiorecords> {
  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    return Scaffold(
      //backgroundColor: Colors.red,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Scaffold.of(context).openDrawer(),
          icon: SvgPicture.asset(AppIcons.drawer),
        ),
        elevation: 0,
        backgroundColor: blueCircular,
        centerTitle: true,
        title: AutoSizeText(
          S.of(context).audiorecord,
          maxLines: 1,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: AppFonts.fontFamily,
            fontWeight: AppFonts.bold,
            fontSize: 36.0,
          ),
        ),
      ),
      //drawer: NavigationDrawer(),
      //bottomNavigationBar: const BottomBar(),
      body: Stack(
        children: [
          CircularWrapper(
            color: blueCircular,
            height: h / 3,
            shadow: const BoxShadow(
              color: blueCircularShadow,
              offset: Offset(0.0, 4.0),
              blurRadius: 25.0,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
