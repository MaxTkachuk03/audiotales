import 'package:audiotales/resouses/icons.dart';
import 'package:audiotales/widgets/navigation/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => const NavigationDrawer()));
        }, 
        icon: SvgPicture.asset(AppIcons.drawer));
  }
}
