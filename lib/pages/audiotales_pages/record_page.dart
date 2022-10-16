import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/widgets/buttons/text_buttons.dart';
import 'package:audiotales/widgets/navigation/custom_bottomnavigator.dart';
import 'package:audiotales/widgets/navigation/drawer.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class RecordPage extends StatefulWidget {
  const RecordPage({super.key});

  static const routeName = '/audiotales/record';

  @override
  State<RecordPage> createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: purple,
      ),
      drawer: NavigationDrawer(),
      bottomNavigationBar: const BottomBar(),
      body: Stack(
        children: [
          CircularWrapper(
            height: h / 2.4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: SlidingUpPanel(
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SlidingRecord extends StatelessWidget {
  const _SlidingRecord({super.key});

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
          flex: 2,
        ),
      ],
    );
  }
}
