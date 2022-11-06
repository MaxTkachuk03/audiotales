part of 'navigation_bloc_bloc.dart';

enum NavigationStateStatus { initial, bottombar, drawer }

// @immutable
// abstract class NavigationBlocState {}

class NavigationState {
  NavigationState({
    this.status = NavigationStateStatus.initial,
    this.currentChoise = 0,
    this.route = MainView.routeName,
  });

  final NavigationStateStatus status;
  final int currentChoise;
  final String route;

  NavigationState copyWith({
    NavigationStateStatus? status,
    int? currentChoise,
    String? route,
  }) {
    return NavigationState(
      currentChoise: currentChoise ?? this.currentChoise,
      status: status ?? this.status,
      route: route ?? this.route,
    );
  }
}
