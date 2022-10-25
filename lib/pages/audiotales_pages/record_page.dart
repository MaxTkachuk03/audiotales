import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/resouses/icons.dart';
import 'package:audiotales/widgets/buttons/text_button_cancel.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sound/public/flutter_sound_recorder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class RecordPage extends StatefulWidget {
  const RecordPage({super.key});

  static const routeName = '/audiotales/record';

  @override
  State<RecordPage> createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  final recorder = FlutterSoundRecorder();

  @override
  void initState() {
    super.initState();

    //initRecorder();
  }

  // Future initRecorder() async {
  //   final status = await Permission.microphone.request();

  //   if (status != PermissionStatus.granted){
  //     throw 'Microphone permission not granted';
  //   }
  // }

  @override
  void dispose() {
    recorder.closeRecorder();
    super.dispose();
  }

  Future record() async {
    await recorder.startRecorder(toFile: 'audio');
  }

  Future stop() async {
    await recorder.stopRecorder();
  }

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    //final double w = MediaQuery.of(context).size.width;
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
      //drawer: NavigationDrawer(),
      // bottomNavigationBar: Stack(
      //   clipBehavior: Clip.none,
      //   children: [
      //     recorder.isStopped
      //         ? Positioned(
      //             left: 135,
      //             bottom: 10,
      //             child: SizedBox(
      //               height: 161,
      //               width: 80,
      //               child: IconButton(
      //                 onPressed: () async {
      //                   if (recorder.isRecording) {
      //                     await stop();
      //                   } else {
      //                     await record();
      //                   }

      //                   setState(() {});
      //                 },
      //                 icon: SvgPicture.asset(
      //                   AppIcons.recording,
      //                 ),
      //               ),
      //             ),
      //           )
      //         : Positioned(
      //             left: 135,
      //             bottom: 80,
      //             child: SizedBox(
      //               height: 81,
      //               width: 81,
      //               child: IconButton(
      //                 onPressed: () {},
      //                 icon: SvgPicture.asset(
      //                   AppIcons.play,
      //                 ),
      //               ),
      //             ))
      //   ],
      // ),
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
              panel: const _SlidingRecord(),
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
  }
}

class _SlidingRecord extends StatelessWidget {
  const _SlidingRecord(
      ////////Key? key,
      ); //: super(key: key);

  @override
  Widget build(BuildContext context) {
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
            const Text(
              '00:01:30',
              style: TextStyle(
                fontWeight: AppFonts.regular,
                fontFamily: AppFonts.fontFamily,
                fontSize: 18.0,
              ),
            ),
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
  }
}
