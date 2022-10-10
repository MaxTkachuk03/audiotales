import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/widgets/navigation/custom_bottomnavigator.dart';
import 'package:audiotales/widgets/navigation/drawer.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:flutter/material.dart';

class Selections extends StatefulWidget {
  const Selections({super.key});

  static const routeName = '/audiotales/selections';

  @override
  State<Selections> createState() => _SelectionsState();
}

class _SelectionsState extends State<Selections> {
  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: greenCircular,
      ),
      drawer: NavigationDrawer(),
      bottomNavigationBar: const BottomBar(
      ),
      body: CircularWrapper(
        color: greenCircular,
        height: h / 2.4,
        shadow: const BoxShadow(
          color: greenCircularShadow,
          offset: Offset(0.0, 4.0),
          blurRadius: 25.0,
        ),
        child: Column(children: []),
      ),
    );
  
  }
}