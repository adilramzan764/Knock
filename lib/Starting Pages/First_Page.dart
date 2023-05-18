import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:knock/Starting%20Pages/Second_Page.dart';

class First_Page extends StatefulWidget {
  const First_Page({Key? key}) : super(key: key);

  @override
  State<First_Page> createState() => _First_PageState();
}

class _First_PageState extends State<First_Page> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(context as BuildContext,
            MaterialPageRoute(builder: (context) => Second_Page())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFE9B01),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SvgPicture.asset("assets/Vector.svg"),
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(0, 220),
            child: CircularProgressIndicator(
              color: Colors.white,
              semanticsLabel: "Circular progress indicator",
            ),
          )
        ],
      ),
    );
  }
}
