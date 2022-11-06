import 'package:audiotales/pages/screens/main_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_bloc_event.dart';
part 'navigation_bloc_state.dart';

class NavigationBloc extends Bloc<NavigationBlocEvent, NavigationState> {
  NavigationBloc() : super(NavigationState()) {
    on<NavigationBottomBar>(
      (event, emit) {
        emit(
          state.copyWith(
            status: NavigationStateStatus.bottombar,
            currentChoise: event.bottomIndex,
            route: event.bottomRoute,
          ),
        );
      },
    );
     on<NavigationDrawerEvent>(
      (event, emit) {
        emit(
          state.copyWith(
            status: NavigationStateStatus.drawer,
            currentChoise: event.drawerIndex,
            route: event.drawerRoute,
          ),
        );
      },
    );
  }
}
