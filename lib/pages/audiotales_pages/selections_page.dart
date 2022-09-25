import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:flutter/material.dart';

class Selections extends StatefulWidget {
  const Selections({super.key});

  @override
  State<Selections> createState() => _SelectionsState();
}

class _SelectionsState extends State<Selections> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CircularWrapper(color: green,
      child: Column()
      ),
    );
  }
}