import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        unselectedIconTheme: const IconThemeData(
          color: Colors.blue,
        ),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            label: S.of(context).main,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.apps),
            label: S.of(context).selections,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.transform),
            label: S.of(context).record,
          ),
           BottomNavigationBarItem(
            icon: const Icon(Icons.audio_file),
            label: S.of(context).audiorecord,
          ),
           BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: S.of(context).profile,
          ),
        ],
      );
  }
}