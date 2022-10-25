import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/pages/audiotales_pages/premium_page.dart';
import 'package:audiotales/pages/audiotales_pages/profile_page.dart';
import 'package:audiotales/pages/main_page.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/resouses/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({
    required this.onTap,
    super.key,
  });

  final void Function(String) onTap;

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {

  // void _navigateToPage(BuildContext context, String route) {
  //   Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil(
  //     route,
  //     (_) => false,
  //   );
  // }

  void _onChanged(int index, String routName) {
      widget.onTap(routName);
      Navigator.pop(context);
  }


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
              const Spacer(flex: 2),
              _DrawerItem(
                icon: SvgPicture.asset(AppIcons.home),
                title: S.of(context).main,
                onSelect: () {
                  _onChanged(0,MainPage.routeName);
                },
              ),
              _DrawerItem(
                icon: SvgPicture.asset(AppIcons.profile),
                title: S.of(context).profile,
                onSelect: () {
                  _onChanged(1,Profile.routeName);
                },
              ),
              _DrawerItem(
                icon: SvgPicture.asset(AppIcons.category),
                title: S.of(context).selections,
                onSelect: () {},
              ),
              _DrawerItem(
                icon: SvgPicture.asset(AppIcons.paper),
                title: S.of(context).allaudio,
                onSelect: () {},
              ),
              _DrawerItem(
                icon: SvgPicture.asset(AppIcons.search),
                title: S.of(context).search,
                onSelect: () {},
              ),
              _DrawerItem(
                icon: SvgPicture.asset(AppIcons.delete),
                title: S.of(context).deleted,
                onSelect: () {},
              ),
              const Spacer(),
              _DrawerItem(
                icon: SvgPicture.asset(AppIcons.wallet),
                title: S.of(context).premium,
                onSelect: () {
                  _onChanged(6, PremiumPage.routeName);
                },
              ),
              const Spacer(),
              _DrawerItem(
                icon: SvgPicture.asset(AppIcons.edit),
                title: S.of(context).support,
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

class _DrawerItem extends StatelessWidget {
  const _DrawerItem({
    required this.icon,
    required this.title,
    required this.onSelect,
    Key? key,
  }) : super(key: key);

  final Widget icon;
  final String title;
  final Function() onSelect;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //const Spacer(),
        const SizedBox(width: 18.0),
        TextButton.icon(
          onPressed: onSelect,
          icon: SizedBox(
            width: 30.0,
            child: icon,
          ),
          label: Text(
            title,
            style: const TextStyle(
                color: black,
                fontFamily: AppFonts.fontFamily,
                fontSize: 18.0,
                fontWeight: AppFonts.regular),
          ),
        ),
        const Spacer()
      ],
    );
  }
}
