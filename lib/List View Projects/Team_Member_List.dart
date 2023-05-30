import 'package:flutter/material.dart';

class Team_Member_List extends StatefulWidget {
  String Text;
  double width;
  String color;
  String color1;

  Team_Member_List(
      {Key? key,
      required this.Text,
      required this.width,
      required this.color,
      required this.color1})
      : super(key: key);

  @override
  State<Team_Member_List> createState() => _Team_Member_ListState();
}

class _Team_Member_ListState extends State<Team_Member_List> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.color.toString() == "first"
              ? Color(0xffed7d2b)
              : Color(0xfffef2ea),
          borderRadius: BorderRadius.circular(32)),
      height: 35,
      width: widget.width,
      child: Center(
          child: Text(
        widget.Text,
        style: TextStyle(
          fontSize: 12,
          color: widget.color1.toString() == "second"
              ? Color(0xffd5cbc4)
              : Colors.white,
        ),
      )),
    );
  }
}
