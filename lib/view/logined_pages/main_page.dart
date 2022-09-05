import 'package:audiotales/src/colors/colors.dart';
import 'package:audiotales/src/wrappers/bottomnavigator.dart';
import 'package:audiotales/widgets/clipper.dart';
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  ClipPath(
                    clipper: MyCustomClipper(),
                    child: Container(
                      color: registrationPage,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(n/2, m /7, 0, 0),
                    child: Container(
                      color: container1,
                      height: MediaQuery.of(context).size.height/6,
                      width: MediaQuery.of(context).size.width/2.5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(n/2, m /7, 0, 0),
                    child: Container(
                      color: container2,
                      height: MediaQuery.of(context).size.height/6,
                      width: MediaQuery.of(context).size.width/2.5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(n/2, m /7, 0, 0),
                    child: Container(
                      color: container3,
                      height: MediaQuery.of(context).size.height/6,
                      width: MediaQuery.of(context).size.width/2.5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, m / 1.1, 0, 0),
                    child: const BottomBar(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
