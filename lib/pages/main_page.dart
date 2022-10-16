import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/pages/audiotales_pages/audiorecords_page.dart';
import 'package:audiotales/pages/audiotales_pages/profile_page.dart';
import 'package:audiotales/pages/audiotales_pages/record_page.dart';
import 'package:audiotales/pages/audiotales_pages/selections_page.dart';
import 'package:audiotales/pages/screens/main_page_view.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/resouses/icons.dart';
import 'package:audiotales/widgets/buttons/text_buttons.dart';
import 'package:audiotales/widgets/navigation/custom_bottomnavigator.dart';
import 'package:audiotales/widgets/navigation/drawer.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MainPage extends StatefulWidget {
   const MainPage({Key? key}) : super(key: key);

  static const routeName = '/audiotales/main';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }


  // int currentTab = 1;

  // List<String> widgets = [
  //   MainPage.routeName,
  //   Selections.routeName,
  //   RecordPage.routeName,
  //   Audiorecords.routeName,
  //   Profile.routeName,
  // ];

  // void _onChanged(int index) {
  //   setState(() {
  //     currentTab = index;
  //   });
  //   Navigator.pushNamed(context, widgets.elementAt(currentTab));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: purple,
      ),
      drawer: NavigationDrawer(),
      bottomNavigationBar: const BottomBar(),
      // const BottomBar(
      //       currentTab: currentTab,
      //       onSelected: () => _onChanged(currentTab+1),
      //     ),
      body: const MainView(),
    );
  }
}

