import 'dart:async';
import 'dart:io';

import 'package:audiotales/blocs/record_bloc/bloc/record_bloc.dart';
import 'package:audiotales/pages/audiotales_pages/audiorecords_page.dart';
import 'package:audiotales/pages/audiotales_pages/profile_page.dart';
import 'package:audiotales/pages/audiotales_pages/record_page.dart';
import 'package:audiotales/pages/audiotales_pages/recrd_example.dart';
import 'package:audiotales/pages/screens/main_page_view.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/resouses/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:record/record.dart';

import '../../generated/l10n.dart';
import '../../pages/audiotales_pages/selections_page.dart';
import '../../resouses/colors.dart';

class BottomBar extends StatefulWidget {
  BottomBar({
    required this.currentTab,
    required this.onSelected,
    super.key,
  });

  int currentTab;
  final void Function(int, String) onSelected;

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  void _onChanged(int index, String routName) {
    setState(() {
      widget.currentTab = index;
    });
    widget.onSelected(index, routName);
  }

  // @override
  // void dispose() {
  //   _timer?.cancel();
  //   _audioRecorder.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return BlocBuilder<RecordBloc, RecordingState>(
        //   listener: (context, state) {
        //   if (state.status == RecordState.record) {
        //     stop(
        //       state.audioRecorder,
        //       state.recordDuration,
        //       state.timer,
        //     );
        //   }
        // },
        builder: (context, state) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Material(
            child: Container(
              width: double.infinity,
              height: 69.0,
              padding: const EdgeInsets.only(top: 5.0),
              decoration: const BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: whiteBottomBar,
                    offset: Offset(0.0, 4.0),
                    blurRadius: 50.0,
                    spreadRadius: 10.0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(flex: 4),
                  //const SizedBox(width: 5.0),
                  _BottomBarItem(
                    icon: SvgPicture.asset(
                      AppIcons.home,
                      color: widget.currentTab == 0 ? purple : blackBottomBar,
                    ),
                    title: Text(
                      S.of(context).main,
                      style: TextStyle(
                        color: widget.currentTab == 0 ? purple : blackBottomBar,
                        fontWeight: AppFonts.regular,
                        height: .5,
                        //inherit: true,
                        fontSize: 10.0,
                      ),
                    ),
                    selected: widget.currentTab == 0,
                    onSelect: //() => onSelected,
                        () => _onChanged(0, MainView.routeName),
                  ),
                  //const SizedBox(width: 5.0),
                  const Spacer(flex: 6),
                  _BottomBarItem(
                    icon: SvgPicture.asset(
                      AppIcons.category,
                      color: widget.currentTab == 1 ? purple : blackBottomBar,
                    ),
                    title: Text(
                      S.of(context).selections,
                      style: TextStyle(
                        color: widget.currentTab == 1 ? purple : blackBottomBar,
                        fontWeight: AppFonts.regular,
                        height: .5,
                        fontSize: 10.0,
                      ),
                    ),
                    selected: widget.currentTab == 1,
                    onSelect: () => _onChanged(1, Selections.routeName),
                  ),
                  // SizedBox(width: 5.0),
                  const Spacer(flex: 3),
                  _BottomBarItem(
                    icon: widget.currentTab == 2
                        ? const Text('')
                        : SvgPicture.asset(
                            AppIcons.micro,
                            // color: on ? purple : blackBottomBar,
                          ),
                    title: widget.currentTab == 2
                        ? const Text(
                            '',
                            style: TextStyle(
                              height: 1.0,
                              fontSize: 1.0,
                            ),
                          )
                        : Text(
                            S.of(context).record,
                            style: const TextStyle(
                              color: orange,
                              fontWeight: AppFonts.regular,
                              height: 1.0,
                              fontSize: 10.0,
                            ),
                          ),
                    selected: widget.currentTab == 2,
                    onSelect: () async {
                      // if (_recorder!.isRecording) {
                      //   await stop();
                      // } else {
                      //   await record();
                      // }

                      //setState(() {
                      
                      //  });

                      _onChanged(2, RecordPage.routeName);
                      context.read<RecordBloc>().add(
                            StartRecordEvent(),
                          );
                      //record();
                    },
                  ),
                  //const SizedBox(width: 5.0),
                  const Spacer(flex: 3),
                  _BottomBarItem(
                    icon: SvgPicture.asset(
                      AppIcons.paper,
                      color: widget.currentTab == 3 ? purple : blackBottomBar,
                    ),
                    title: Text(
                      S.of(context).audiorecord,
                      style: TextStyle(
                        color: widget.currentTab == 3 ? purple : blackBottomBar,
                        fontWeight: AppFonts.regular,
                        height: .5,
                        fontSize: 10.0,
                      ),
                    ),
                    selected: widget.currentTab == 3,
                    onSelect: () => _onChanged(3, Audiorecords.routeName),
                  ),
                  //const SizedBox(width: 5.0),
                  const Spacer(flex: 2),
                  _BottomBarItem(
                    icon: SvgPicture.asset(
                      AppIcons.profile,
                      color: widget.currentTab == 4 ? purple : blackBottomBar,
                    ),
                    title: Text(
                      S.of(context).profile,
                      style: TextStyle(
                        color: widget.currentTab == 4 ? purple : blackBottomBar,
                        fontWeight: AppFonts.regular,
                        height: .5,
                        fontSize: 10.0,
                      ),
                    ),
                    selected: widget.currentTab == 4,
                    onSelect: () => _onChanged(4, Profile.routeName),
                  ),
                  const Spacer(flex: 2),
                  //const SizedBox(width: 5.0),
                ],
              ),
            ),
          ),
          widget.currentTab == 2
              ? Positioned(
                  left: w / 2.5,
                  bottom: h / 40,
                  child: SizedBox(
                    height: 161,
                    width: 80,
                    child: IconButton(
                        padding: const EdgeInsets.all(0),
                        onPressed: () async {
                          // if (recorder.isRecording) {
                          //   await stop();
                          // } else {
                          //   await record();
                          // }
                          // RecordPage(
                          //   onStop: (path) {
                          //     stop();
                          //   },
                          // );
                          //await stop();\
                          if (state.status == RecordState.record) {
                            context.read<RecordBloc>().add(
                                  StopRecordEvent(),
                                );
                            print("stop");
                            //setState(() async {
                            //   await stop(
                            //   state.audioRecorder,
                            //   state.recordDuration,
                            //   state.timer,
                            // );
                            //   });

                          }

                          // context.read<RecordBloc>().add(
                          //       StartandStopRecordEvent(
                          //         audioRecorder: state.audioRecorder,
                          //         recordDuration: state.recordDuration,
                          //         timer: state.timer,
                          //         whatState: () => stop(
                          //           state.audioRecorder,
                          //           state.recordDuration,
                          //           state.timer,
                          //         ),
                          //       ),
                          //     );

                          //setState(() {});
                        },
                        icon: SvgPicture.asset(
                          AppIcons.recording,
                        )),
                  ),
                )
              : const Text(''),
        ],
      );
    });
  }
}

class _BottomBarItem extends StatelessWidget {
  const _BottomBarItem({
    required this.icon,
    required this.title,
    required this.selected,
    required this.onSelect,
    Key? key,
  }) : super(key: key);

  final Widget icon;
  final Widget title;
  final bool selected;
  final Function() onSelect;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: onSelect,
          icon: icon,
          iconSize: 46.0,
          padding: const EdgeInsets.all(0),
          alignment: Alignment.center,
        ),
        title,
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

/*
 Stack(
      clipBehavior: Clip.none,
      children: [
        Material(
          child: Container(
            width: double.infinity,
            height: 69.0,
            padding: const EdgeInsets.only(top: 5.0),
            decoration: const BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: whiteBottomBar,
                  offset: Offset(0.0, 4.0),
                  blurRadius: 50.0,
                  spreadRadius: 10.0,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(flex: 3),
                //const SizedBox(width: 5.0),
                _BottomBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.home,
                    color: widget.currentTab == 0 ? purple : blackBottomBar,
                  ),
                  title: Text(
                    S.of(context).main,
                    style: TextStyle(
                      color: widget.currentTab == 0 ? purple : blackBottomBar,
                      fontWeight: AppFonts.regular,
                      height: .5,
                      //inherit: true,
                      fontSize: 10.0,
                    ),
                  ),
                  selected: widget.currentTab == 0,
                  onSelect: //() => onSelected,
                      () => _onChanged(0, MainView.routeName),
                ),
                //const SizedBox(width: 5.0),
                const Spacer(flex: 4),
                _BottomBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.category,
                    color: widget.currentTab == 1 ? purple : blackBottomBar,
                  ),
                  title: Text(
                    S.of(context).selections,
                    style: TextStyle(
                      color: widget.currentTab == 1 ? purple : blackBottomBar,
                      fontWeight: AppFonts.regular,
                      height: .5,
                      fontSize: 10.0,
                    ),
                  ),
                  selected: widget.currentTab == 1,
                  onSelect: () => _onChanged(1, Selections.routeName),
                ),
                // SizedBox(width: 5.0),
                const Spacer(flex: 5),
                _BottomBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.micro,
                    // color: on ? purple : blackBottomBar,
                  ),
                  title: widget.currentTab == 2
                      ? const Text(
                          '',
                          style: TextStyle(
                            height: 1.0,
                            fontSize: 1.0,
                          ),
                        )
                      : Text(
                          S.of(context).record,
                          style: const TextStyle(
                            color: orange,
                            fontWeight: AppFonts.regular,
                            height: 1.0,
                            fontSize: 10.0,
                          ),
                        ),
                  selected: widget.currentTab == 2,
                  onSelect: () {
                    _onChanged(2, RecordPage.routeName);
                    // record();
                  },
                ),
                //const SizedBox(width: 5.0),
                const Spacer(flex: 3),
                _BottomBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.paper,
                    color: widget.currentTab == 3 ? purple : blackBottomBar,
                  ),
                  title: Text(
                    S.of(context).audiorecord,
                    style: TextStyle(
                      color: widget.currentTab == 3 ? purple : blackBottomBar,
                      fontWeight: AppFonts.regular,
                      height: .5,
                      fontSize: 10.0,
                    ),
                  ),
                  selected: widget.currentTab == 3,
                  onSelect: () => _onChanged(3, Audiorecords.routeName),
                ),
                //const SizedBox(width: 5.0),
                const Spacer(flex: 2),
                _BottomBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.profile,
                    color: widget.currentTab == 4 ? purple : blackBottomBar,
                  ),
                  title: Text(
                    S.of(context).profile,
                    style: TextStyle(
                      color: widget.currentTab == 4 ? purple : blackBottomBar,
                      fontWeight: AppFonts.regular,
                      height: .5,
                      fontSize: 10.0,
                    ),
                  ),
                  selected: widget.currentTab == 4,
                  onSelect: () => _onChanged(4, Profile.routeName),
                ),
                const Spacer(flex: 2),
                //const SizedBox(width: 5.0),
              ],
            ),
          ),
        ),
        widget.currentTab == 2
            ? Positioned(
                left: w / 2.66,
                bottom: h / 40,
                child: SizedBox(
                  height: 161,
                  width: 80,
                  child: IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () async {
                      //  if (recorder.isRecording) {
                      //   await stop();
                      // } else {
                      //   await record();
                      // }

                      // setState(() {

                      // });
                    },
                    icon: SvgPicture.asset(
                      AppIcons.recording,
                    ),
                  ),
                ),
              )
            : const Text(''),
      ],
    );
 */
