import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Set_Screen extends StatelessWidget {
  const Set_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset("assets/Back Navigator.svg"))),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Settings",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 60,
                width: Get.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Personal Information",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SvgPicture.asset("assets/setting forward arrow.svg"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 60,
                width: Get.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Preferences Settings",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SvgPicture.asset("assets/setting forward arrow.svg"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 60,
                width: Get.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Security",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SvgPicture.asset("assets/setting forward arrow.svg"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 60,
                width: Get.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Notification",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SvgPicture.asset("assets/setting forward arrow.svg"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 0.5,
                width: Get.width,
                color: Color(0xffececec),
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 60,
                width: Get.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Terms & Conditions",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SvgPicture.asset("assets/setting forward arrow.svg"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 60,
                width: Get.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Privacy Policies",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SvgPicture.asset("assets/setting forward arrow.svg"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 60,
                width: Get.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "About Knock",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SvgPicture.asset("assets/setting forward arrow.svg"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 60,
                width: Get.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Contact Us",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SvgPicture.asset("assets/setting forward arrow.svg"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              SizedBox(
                height: 55,
                width: Get.width,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xfff14336),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32))),
                    child: Text(
                      "Log Out",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
