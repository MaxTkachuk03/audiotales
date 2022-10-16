import 'package:audiotales/pages/main_page.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/widgets/navigation/custom_bottomnavigator.dart';
import 'package:audiotales/widgets/navigation/drawer.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:flutter/material.dart';

class Audiorecords extends StatefulWidget {
  const Audiorecords({super.key});

  static const routeName = '/audiotales/audiorecords';

  @override
  State<Audiorecords> createState() => _AudiorecordsState();
}

class _AudiorecordsState extends State<Audiorecords> {
  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    return Scaffold(
      //backgroundColor: Colors.red,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: blueCircular,
      ),
      drawer: NavigationDrawer(),
      //bottomNavigationBar: const BottomBar(),
      body: Stack(
        children: [
          CircularWrapper(
          color: blueCircular,
          height: h/3,
          shadow: const BoxShadow(
            color: blueCircularShadow,
            offset: Offset(0.0, 4.0),
            blurRadius: 25.0,
          ),
        ),
          Column(children: []),
        ],
      ),
    );
  }
}
