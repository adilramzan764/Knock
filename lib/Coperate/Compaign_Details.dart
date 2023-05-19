import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Compaigns_Details extends StatelessWidget {
  const Compaigns_Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgPicture.asset("assets/Back Navigator.svg")),
                Text(
                  "Campaign Details",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(),
              ],
            ),
            SizedBox(height: 20),
            SvgPicture.asset("assets/deail map.svg"),
            SizedBox(height: 15),
            Text(
              "Power Canvassing",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Canvassing",
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            SizedBox(height: 5),
            Text(
              "Nostrum eos amet omnis dolorem corrupti\naccusantium recusandae. Ut sapiente vel mollitia\nautem non excepturi. Nihil voluptatem delectus\npraesentium sunt aut aut hic. Aut itaque sequi aut\nenim nemo. Nesciunt nemo quo. Qui aut fugit.",
              style: TextStyle(fontSize: 13, color: Colors.black),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffed7d2b),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  height: 20,
                  width: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  )
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
