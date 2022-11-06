import 'dart:async';

import 'package:audiotales/blocs/navigation_bloc/navigation_bloc_bloc.dart';
import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/pages/audiotales_pages/audiorecords_page.dart';
import 'package:audiotales/pages/audiotales_pages/premium_page.dart';
import 'package:audiotales/pages/audiotales_pages/profile_page.dart';
import 'package:audiotales/pages/audiotales_pages/search.dart';
import 'package:audiotales/pages/audiotales_pages/selections_page.dart';
import 'package:audiotales/pages/screens/main_page_view.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/resouses/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  void _navigateToPage(
    BuildContext context, {
    required int index,
    required int currentIndex,
    required String route,
  }) {
    Navigator.pop(context);

    if (index != currentIndex) {
      context.read<NavigationBloc>().add(
            NavigationBottomBar(
              bottomIndex: index,
              bottomRoute: route,
            ),
          );
    }
  }

  void _onChanged(BuildContext context, String route) {
    widget.onTap(route);
    // Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil(
    //   route,
    //   (_) => false,
    // );
    Timer(
      const Duration(seconds: 1),
      () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
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
                      _navigateToPage(
                        context,
                        index: 0,
                        currentIndex: state.currentChoise,
                        route: MainView.routeName,
                      );
                      //_onChanged(0, MainPage.routeName);
                    },
                  ),
                  _DrawerItem(
                    icon: SvgPicture.asset(AppIcons.profile),
                    title: S.of(context).profile,
                    onSelect: () {
                       _navigateToPage(
                        context,
                        index: 4,
                        currentIndex: state.currentChoise,
                        route: Profile.routeName,
                      );
                      //_onChanged(1, Profile.routeName);
                    },
                  ),
                  _DrawerItem(
                    icon: SvgPicture.asset(AppIcons.category),
                    title: S.of(context).selections,
                    onSelect: () {
                      _navigateToPage(
                        context,
                        index: 1,
                        currentIndex: state.currentChoise,
                        route: Selections.routeName,
                      );
                      //_onChanged(2, Selections.routeName);
                    },
                  ),
                  _DrawerItem(
                    icon: SvgPicture.asset(AppIcons.paper),
                    title: S.of(context).allaudio,
                    onSelect: () {
                      _navigateToPage(
                        context,
                        index: 3,
                        currentIndex: state.currentChoise,
                        route: Audiorecords.routeName,
                      );
                      //_onChanged(3, Audiorecords.routeName);
                    },
                  ),
                  _DrawerItem(
                    icon: SvgPicture.asset(AppIcons.search),
                    title: S.of(context).search,
                    onSelect: () {
                      _onChanged(context, Search.routeName);
                    },
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
                      _onChanged(context, PremiumPage.routeName);
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
      },
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
