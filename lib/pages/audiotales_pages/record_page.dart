import 'dart:async';

import 'package:audiotales/blocs/record_bloc/bloc/record_bloc.dart';
import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/resouses/icons.dart';
import 'package:audiotales/widgets/buttons/text_button_cancel.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:record/record.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class RecordPage extends StatefulWidget {
  const RecordPage({
    Key? key,
  }) : super(key: key);

  static const routeName = '/audiotales/record';

  @override
  State<RecordPage> createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  @override
  void initState() {
    // context.watch<RecordBloc>().state.recordSub = context
    //     .watch<RecordBloc>()
    //     .state
    //     .audioRecorder
    //     .onStateChanged()
    //     .listen((recordState) {
    //   setState(() => context.watch<RecordBloc>().state.status = recordState);
    // });
    // _recordSub = _audioRecorder.onStateChanged().listen((recordState) {
    //   setState(() => _recordState = recordState);
    // });

    // context.watch<RecordBloc>().state.amplitudeSub = context
    //     .watch<RecordBloc>()
    //     .state
    //     .audioRecorder
    //     .onAmplitudeChanged(const Duration(milliseconds: 300))
    //     .listen((amp) => setState(() => context.watch<RecordBloc>().state.amplitude = amp));

    super.initState();

    // if (_recordState == RecordState.stop) {
    //   _start(
    //     _audioRecorder,
    //     _recordDuration,
    //     _timer,
    //   );
    // }
  }

  // @override
  // void dispose() {
  //   _timer?.cancel();
  //   _recordSub?.cancel();
  //   _amplitudeSub?.cancel();
  //   _audioRecorder.dispose();
  //   super.dispose();
  // }

  // Widget _buildTimer() {

  //   return
  // }
  Widget buildTimer(int recordDuration, RecordState status) {
    final String minutes = _formatNumber(recordDuration ~/ 60);
    final String seconds = _formatNumber(recordDuration % 60);

    if (status != RecordState.stop) {
      return Text(
        '$minutes : $seconds',
        style: const TextStyle(
          fontWeight: AppFonts.regular,
          fontFamily: AppFonts.fontFamily,
          fontSize: 18.0,
        ),
      );
      //_buildTimer();
    }

    return const Text('Waiting to record');
  }

  String _formatNumber(int number) {
    String numberStr = number.toString();
    if (number < 10) {
      numberStr = '0$numberStr';
    }
    return numberStr;
  }

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    //final double w = MediaQuery.of(context).size.width;
    return BlocConsumer<RecordBloc, RecordingState>(listener: (context, state) {
      if (state.status == RecordState.stop) {
        // setState(() {
        //           _start(
        //   state.audioRecorder,
        //   state.recordDuration,
        //   state.timer,
        // );
        // });

        setState(() {});
        // context.read<RecordBloc>().add(
        //       StartandStopRecordEvent(
        //         audioRecorder: _audioRecorder,
        //         recordDuration: _recordDuration,
        //         timer: _timer,
        //         whatState: () => _start(
        //           _audioRecorder,
        //           _recordDuration,
        //           _timer,
        //         ),
        //         stateNow: RecordState.record,
        //       ),
        //     );
      }
    }, builder: (context, state) {
      return Scaffold(
        extendBody: true,
        appBar: AppBar(
          leading: IconButton(
            icon: SvgPicture.asset(AppIcons.drawer),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
          elevation: 0,
          backgroundColor: purple,
        ),
        body: Stack(
          children: [
            CircularWrapper(
              height: h / 2.4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: SlidingUpPanel(
                maxHeight: h / 1.2,
                parallaxOffset: 0.8,
                parallaxEnabled: true,
                defaultPanelState: PanelState.OPEN,
                isDraggable: false,
                panel: _slidingRecord(),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: whiteBottomBar,
                    offset: Offset(0, 4.0),
                    blurRadius: 24.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget _slidingRecord() {
    return BlocBuilder<RecordBloc, RecordingState>(builder: (context, state) {
      return Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Spacer(
                flex: 6,
              ),
              TextButtonCancel(),
              Spacer(),
            ],
          ),
          const Spacer(),
          Text(
            S.of(context).record,
            style: const TextStyle(
              color: black,
              fontFamily: AppFonts.fontFamily,
              fontSize: 24.0,
              fontWeight: AppFonts.regular,
            ),
          ),
          const Spacer(
            flex: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppIcons.redcircle,
              ),
              const SizedBox(
                width: 8.0,
              ),
              buildTimer(state.recordDuration, state.status),
              // _buildText(),
              // StreamBuilder<RecordingDisposition>(
              //   //stream: //_recorder!.onProgress,
              //   builder: (context, snapshot) {
              //     final duration =
              //         snapshot.hasData ? snapshot.data!.duration : Duration.zero;

              //     String twoDigits(int n) => n.toString().padLeft(2, "0");
              //     final twoDigitMinutes =
              //         twoDigits(duration.inMinutes.remainder(60));
              //     final twoDigitSeconds =
              //         twoDigits(duration.inSeconds.remainder(60));
              //     return Text(
              //       '$twoDigitMinutes:$twoDigitSeconds',
              //       style: const TextStyle(
              //         fontWeight: AppFonts.regular,
              //         fontFamily: AppFonts.fontFamily,
              //         fontSize: 18.0,
              //       ),
              //     );
              //   },
              // )
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 81,
                width: 81,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppIcons.play,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      );
    });
  }
}

// class _SlidingRecord extends StatelessWidget {
//   _SlidingRecord(
//       ////////Key? key,
//       ); //: super(key: key);

//   //final recorder = FlutterSoundRecorder();

//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
