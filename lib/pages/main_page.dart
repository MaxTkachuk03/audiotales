import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/widgets/navigation/bottomnavigator.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double m = MediaQuery.of(context).size.height;
    double n = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      body: SizedBox(
        height: m,
        width: n,
        child: Column(
            children: [
              CircularWrapper(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(n/2, m /7, 0, 0),
                      child: Container(
                        color: orangeLight,
                        height: m/6,
                        width: n/2.5,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(n/2, m /7, 0, 0),
                      child: Container(
                        height: m/6,
                        width: n/2.5,
                        decoration: const BoxDecoration(
                          color: blue,
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.fromLTRB(n/2, m /7, 0, 0),
                    //   child: Container(
                    //     color: green,
                    //     height: m/6,
                    //     width: n/2.5,
                    //   ),
                    // ),
                    // Padding(
                    //   padding: EdgeInsets.fromLTRB(0, m / 1.1, 0, 0),
                    //   child: 
                    // ),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}
