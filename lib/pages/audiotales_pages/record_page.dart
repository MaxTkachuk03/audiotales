import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/widgets/navigation/custom_bottomnavigator.dart';
import 'package:audiotales/widgets/navigation/drawer.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:flutter/material.dart';

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
      bottomNavigationBar: const BottomBar(
      ),
      body: CircularWrapper(
        color: purple,
        height: h / 2.4,
        shadow: const BoxShadow(
          color: shadowCircular,
          offset: Offset(0.0, 4.0),
          blurRadius: 35.0,
        ),
        child: Column(children: []),
      ),
    );
  }
}