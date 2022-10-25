import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: blueCircular,
      ),
      //drawer: NavigationDrawer(),
      //bottomNavigationBar: const BottomBar(),
      body: Stack(
        children: [
          CircularWrapper(
            color: blueCircular,
            height: h / 3,
            shadow: const BoxShadow(
              color: blueCircularShadow,
              offset: Offset(0.0, 4.0),
              blurRadius: 25.0,
            ),
          ),
          Column(
            children: [],
          ),
        ],
      ),
    );
  }
}
