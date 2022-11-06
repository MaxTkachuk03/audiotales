part of 'navigation_bloc_bloc.dart';

@immutable
abstract class NavigationBlocEvent {}

class NavigationBottomBar extends NavigationBlocEvent {
  NavigationBottomBar({
    required this.bottomIndex,
    required this.bottomRoute,
  });

  final int bottomIndex;
  final String bottomRoute;
}

class NavigationDrawerEvent extends NavigationBlocEvent {
    NavigationDrawerEvent({
    required this.drawerIndex,
    required this.drawerRoute,
  });

  final int drawerIndex;
  final String drawerRoute;
}
