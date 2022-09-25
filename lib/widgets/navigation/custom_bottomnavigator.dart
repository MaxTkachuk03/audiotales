import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/resouses/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../generated/l10n.dart';
import '../../resouses/colors.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    required this.currentTab,
    required this.onSelected,
    super.key,
  });

  final int currentTab;
  final void Function() onSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 69.0,
      padding: const EdgeInsets.only(top: 5.0),
      decoration: const BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
              color: whiteBottomBar,
              offset: Offset(0.0, 4.0),
              blurRadius: 50.0,
              spreadRadius: 10.0),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(flex:3),
          //const SizedBox(width: 5.0),
          BottomBarItem(
            icon: SvgPicture.asset(
              AppIcons.home,
              color: currentTab==0 ? purple : blackBottomBar,
            ),
            title: Text(
              S.of(context).main,
              style: TextStyle(
                  color: currentTab==0 ? purple : blackBottomBar,
                  fontWeight: AppFonts.regular,
                  height: .5,
                  //inherit: true,
                  fontSize: 10.0),
            ),
            selected: currentTab==0, 
            onSelect: onSelected,
          ),
          //const SizedBox(width: 5.0),
          const Spacer(flex: 4),
          BottomBarItem(
            icon: SvgPicture.asset(
              AppIcons.category,
              color: currentTab==1 ? purple : blackBottomBar,
            ),
            title: Text(
              S.of(context).selections,
              style: TextStyle(
                  color: currentTab==1 ? purple : blackBottomBar,
                  fontWeight: AppFonts.regular,
                  height: .5,
                  fontSize: 10.0),
            ),
            selected: currentTab==1,
            onSelect: onSelected,
          ),
          // SizedBox(width: 5.0),
          const Spacer(flex: 5),
          BottomBarItem(
            icon: SvgPicture.asset(
              AppIcons.micro,
              // color: on ? purple : blackBottomBar,
            ),
            title: Text(
              S.of(context).record,
              style: const TextStyle(
                  color: orange,
                  fontWeight: AppFonts.regular,
                  height: 1.0,
                  fontSize: 10.0),
            ),
            selected: currentTab==2,
            onSelect: onSelected,
          ),
          //const SizedBox(width: 5.0),
          const Spacer(flex: 3),
          BottomBarItem(
            icon: SvgPicture.asset(
              AppIcons.paper,
              color: currentTab==3 ? purple : blackBottomBar,
            ),
            title: Text(
              S.of(context).audiorecord,
              style: TextStyle(
                  color: currentTab==3 ? purple : blackBottomBar,
                  fontWeight: AppFonts.regular,
                  height: .5,
                  fontSize: 10.0),
            ),
            selected: currentTab==3,
            onSelect: onSelected,
          ),
          //const SizedBox(width: 5.0),
          const Spacer(flex: 2),
          BottomBarItem(
            icon: SvgPicture.asset(
              AppIcons.profile,
              color: currentTab==4 ? purple : blackBottomBar,
            ),
            title: Text(
              S.of(context).profile,
              style: TextStyle(
                  color: currentTab==4 ? purple : blackBottomBar,
                  fontWeight: AppFonts.regular,
                  height: .5,
                  fontSize: 10.0),
            ),
            selected: currentTab==4,
            onSelect: onSelected,
          ),
          const Spacer(flex: 2),
          //const SizedBox(width: 5.0),
        ],
      ),
    );
  }
}

class BottomBarItem extends StatelessWidget {
  const BottomBarItem({
    super.key,
    required this.icon,
    required this.title,
    required this.selected, 
    required this.onSelect,
  });

  final Widget icon;
  final Widget title;
  final bool selected;
  final Function() onSelect;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       //const Spacer(),
        IconButton(
          //color: selected ? purple : blackBottomBar,
          onPressed: onSelect,
          icon: icon,
          iconSize: 46.0,
          padding: const EdgeInsets.all(0),
          alignment: Alignment.center,
        ),
        title,
       //const Spacer(),
      ],
    );
  }
}

// class BottomBar extends StatelessWidget {
//   const BottomBar({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         color: white,
//         borderRadius: BorderRadius.all(Radius.circular(20.0)),
//         boxShadow: [
//           BoxShadow(
//               color: whiteBottomBar,
//               offset: Offset(0.0, 4.0),
//               blurRadius: 50.0,
//               spreadRadius: 10.0),
//         ],
//       ),
//       child: ClipRRect(
//         borderRadius: const BorderRadius.only(
//             topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
//         child: BottomNavigationBar(
//           backgroundColor: white,
//           selectedLabelStyle: const TextStyle(
//               color: blackBottomBar,
//               fontWeight: AppFonts.regular,
//               fontSize: 10.0),
//           unselectedLabelStyle: const TextStyle(
//               color: blackBottomBar,
//               fontWeight: AppFonts.regular,
//               fontSize: 10.0),
//           selectedItemColor: purple,
//           type: BottomNavigationBarType.fixed,
//           items: [
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset(AppIcons.home),
//               activeIcon: SvgPicture.asset(
//                 AppIcons.home,
//                 color: purple,
//               ),
//               label: S.of(context).main,
//             ),
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset(AppIcons.category),
//               activeIcon: SvgPicture.asset(
//                 AppIcons.category,
//                 color: purple,
//               ),
//               label: S.of(context).selections,
//             ),
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset(AppIcons.micro),
//               activeIcon: SvgPicture.asset(
//                 AppIcons.micro,
//                 color: purple,
//               ),
//               label: S.of(context).record,
//             ),
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset(AppIcons.paper),
//               activeIcon: SvgPicture.asset(
//                 AppIcons.paper,
//                 color: purple,
//               ),
//               label: S.of(context).audiorecord,
//             ),
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset(AppIcons.profile),
//               activeIcon: SvgPicture.asset(
//                 AppIcons.profile,
//                 color: purple,
//               ),
//               label: S.of(context).profile,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
