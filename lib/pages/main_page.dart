import 'package:audiotales/pages/screens/main_page_view.dart';
import 'package:audiotales/routes/app_routes.dart';
import 'package:audiotales/widgets/navigation/custom_bottomnavigator.dart';
import 'package:audiotales/widgets/navigation/drawer.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static const routeName = '/main';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  void _onSelectTab(String route) {
    if (_navigatorKey.currentState != null) {
      _navigatorKey.currentState!.pushNamedAndRemoveUntil(
        route,
        (route) => false,
      );
    }
  }

    void _onSelectMenu(String route) {
    if (_navigatorKey.currentState != null) {
      _navigatorKey.currentState!.pushNamedAndRemoveUntil(
        route,
        (_) => false,
      );
    }
  }

  // void _onSelectTab1(String route) {
  //   if (_navigatorKey.currentState != null) {
  //     _navigatorKey.currentState?.pushNamedAndRemoveUntil(
  //       route,
  //       (route) => false,
  //       //Scaffold.of(context).closeDrawer(),
  //     );
  //   }
  // }

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
    //_key.currentState?.closeDrawer();
    return Scaffold(
      key: _key,
      extendBody: true,
      //drawerEnableOpenDragGesture: false,
      drawer: NavigationDrawer(
        onTap: _onSelectMenu,
      ),
      bottomNavigationBar: BottomBar(
        onSelected: _onSelectTab,
      ),
      body: Navigator(
        key: _navigatorKey,
        initialRoute: MainView.routeName,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
