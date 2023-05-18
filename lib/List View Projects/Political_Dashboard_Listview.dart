import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Political_Dashboard_Listview extends StatefulWidget {
  String img;
  String text1;
  String text2;
  String color;
  String color1;


  Political_Dashboard_Listview(
      {Key? key, required this.img, required this.text1, required this.text2,required this.color,required this.color1})
      : super(key: key);

  @override
  State<Political_Dashboard_Listview> createState() =>
      _Political_Dashboard_ListviewState();
}

class _Political_Dashboard_ListviewState
    extends State<Political_Dashboard_Listview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.color.toString()=="first"?Color(0xfffef2ea):Color(0xffe9ecf2),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 150,
      width: Get.width * 0.4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: widget.color1.toString()=="Second"? Color(0xfffde6d7):Color(0xffd5dbe6),
                borderRadius: BorderRadius.circular(15),
              ),
              height: 60,
              width: Get.width * 0.2,
              child: SvgPicture.asset(
                widget.img,
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(height: 5),
            Text(
              widget.text1,
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              widget.text2,
              style: TextStyle(
                  fontSize: 36,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
