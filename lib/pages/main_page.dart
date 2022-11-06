import 'package:audiotales/blocs/navigation_bloc/navigation_bloc_bloc.dart';
import 'package:audiotales/pages/screens/main_page_view.dart';
import 'package:audiotales/routes/app_routes.dart';
import 'package:audiotales/widgets/navigation/custom_bottomnavigator.dart';
import 'package:audiotales/widgets/navigation/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static const routeName = '/main';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // final GlobalKey<ScaffoldState> _key = GlobalKey();

  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  void _onSelectTab(String route) {
    if (_navigatorKey.currentState != null) {
      _navigatorKey.currentState!.pushNamedAndRemoveUntil(
        route,
        (_) => false, //  або     (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    //_key.currentState?.openDrawer();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          // або можна так: BlocProvider<NavigationBloc>(
          create: (_) => NavigationBloc(),
          // create: (context) => NavigationBloc(),
        ),
      ],
      child: BlocConsumer<NavigationBloc, NavigationState>(
        builder: (context, state) {
          return Scaffold(
            // key: _key,
            extendBody: true,
            //drawerEnableOpenDragGesture: false,
            drawer: NavigationDrawer(
              onTap: _onSelectTab,
            ),
            bottomNavigationBar: BottomBar(
              currentTab: state.currentChoise,
              onSelected: (int index, String route) {
                if (state.currentChoise != index) {
                  //! First method
                  // BlocProvider.of<NavigationBloc>(context).add(
                  //   NavigationBottomBar(
                  //     bottomIndex: index,
                  //     bottomRoute: route,
                  //   ),
                  // );
                  //! Second method
                  context.read<NavigationBloc>().add(
                        NavigationBottomBar(
                          bottomIndex: index,
                          bottomRoute: route,
                        ),
                      );
                }
              },
            ),
            body: Navigator(
              key: _navigatorKey,
              initialRoute: MainView.routeName,
              onGenerateRoute: AppRouter.generateRoute,
            ),
          );
        },
        listener: (_, state) {
          if (state.status == NavigationStateStatus.bottombar ||
              state.status == NavigationStateStatus.drawer) {
            _onSelectTab(state.route);
          }
        },
      ),
    );
  }
}
