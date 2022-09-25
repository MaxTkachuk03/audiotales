import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/resouses/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  final int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          // color: white,
          // borderRadius: BorderRadius.only(
          //       topRight: Radius.circular(20.0), bottomRight: Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(color: shadowForDrawer, blurRadius: 30.0),
          ]),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0)),
        child: Drawer(
          width: 291.0, // MediaQuery.of(context).size.width/1.5,
          backgroundColor: white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                S.of(context).audiotales,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: AppFonts.fontFamily,
                  fontSize: 24.0,
                  fontWeight: AppFonts.regular,
                ),
              ),
              const Spacer(),
              Text(
                S.of(context).menu,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: lightBlack,
                  fontFamily: AppFonts.fontFamily,
                  fontSize: 22.0,
                  fontWeight: AppFonts.regular,
                ),
              ),
              const Spacer(flex:2),
              DrawerItem(
                icon: SvgPicture.asset(AppIcons.home),
                title: S.of(context).main,
                selected: _currentTab == 0,
                onSelect: () {},
              ),
              DrawerItem(
                icon: SvgPicture.asset(AppIcons.profile),
                title: S.of(context).profile,
                selected: _currentTab == 0,
                onSelect: () {},
              ),
              DrawerItem(
                icon: SvgPicture.asset(AppIcons.category),
                title: S.of(context).selections,
                selected: _currentTab == 0,
                onSelect: () {},
              ),
              DrawerItem(
                icon: SvgPicture.asset(AppIcons.paper),
                title: S.of(context).allaudio,
                selected: _currentTab == 0,
                onSelect: () {},
              ),
              DrawerItem(
                icon: SvgPicture.asset(AppIcons.search),
                title: S.of(context).search,
                selected: _currentTab == 0,
                onSelect: () {},
              ),
              DrawerItem(
                icon: SvgPicture.asset(AppIcons.delete),
                title: S.of(context).deleted,
                selected: _currentTab == 0,
                onSelect: () {},
              ),
              const Spacer(),
              DrawerItem(
                icon: SvgPicture.asset(AppIcons.wallet),
                title: S.of(context).premium,
                selected: _currentTab == 0,
                onSelect: () {},
              ),
              const Spacer(),
              DrawerItem(
                icon: SvgPicture.asset(AppIcons.edit),
                title: S.of(context).support,
                selected: _currentTab == 0,
                onSelect: () {},
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    required this.icon,
    required this.title,
    required this.selected,
    required this.onSelect,
    super.key,
  });

  final Widget icon;
  final String title;
  final bool selected;
  final Function() onSelect;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 20.0),
        IconButton(onPressed: () {}, icon: icon,),
        Text(
          title,
          style: const TextStyle(
              fontFamily: AppFonts.fontFamily,
              fontSize: 18.0,
              fontWeight: AppFonts.regular),
        ),
      ],
    );
  }
}
