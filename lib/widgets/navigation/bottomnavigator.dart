import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/resouses/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../generated/l10n.dart';
import '../../resouses/colors.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
              color: whiteBottomBar,
              offset: Offset(0.0, 4.0),
              blurRadius: 50.0,
              spreadRadius: 10.0),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        child: BottomNavigationBar(
          backgroundColor: white,
          selectedLabelStyle: const TextStyle(
              color: blackBottomBar,
              fontWeight: AppFonts.regular,
              fontSize: 10.0),
          selectedItemColor: purple,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.home),
              activeIcon: SvgPicture.asset(
                AppIcons.home,
                color: purple,
              ),
              label: S.of(context).main,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.category),
              activeIcon: SvgPicture.asset(
                AppIcons.category,
                color: purple,
              ),
              label: S.of(context).selections,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.micro),
              activeIcon: SvgPicture.asset(
                AppIcons.micro,
                color: purple,
              ),
              label: S.of(context).record,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.paper),
              activeIcon: SvgPicture.asset(
                AppIcons.paper,
                color: purple,
              ),
              label: S.of(context).audiorecord,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.profile),
              activeIcon: SvgPicture.asset(
                AppIcons.profile,
                color: purple,
              ),
              label: S.of(context).profile,
            ),
          ],
        ),
      ),
    );
  }
}
