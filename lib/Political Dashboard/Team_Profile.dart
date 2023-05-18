import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class Team_Profile extends StatelessWidget {
  const Team_Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            color: Color(0xfff08505),
            height: 150,
            width: Get.width,
            child: Column(
              children: [
                SizedBox(height: 40),
                Stack(
                  children: [
                    const Text("Team Profile",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 80,
                      width: 100,
                    ),
                  ],
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}
