import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:knock/Canvasser/New_Voter.dart';


class Walk_Sheet extends StatelessWidget {
  const Walk_Sheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
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
                    "Walk Sheet",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                      onTap: () {Get.to(() => New_Voter());},
                      child: SvgPicture.asset("assets/add icon.svg"))
                ],
              ),
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 50,
                width: Get.width,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: SvgPicture.asset(
                      "assets/Search.svg",
                      fit: BoxFit.scaleDown,
                    ),
                    hintText: "Search here",
                    hintStyle:
                    TextStyle(fontSize: 16, color: Color(0xffc1c1c1)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Total Voters: 6",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
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
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/AAAAAA.jpg"),
                                  fit: BoxFit.cover),
                              color: Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            height: 45,
                            width: Get.width * 0.145,
                          ),
                          SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Matthew Frami MD",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    "Votes:",
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xffafafaf)),
                                  ),
                                  Text(
                                    "4",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SvgPicture.asset("assets/arrow icon.svg"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 60,
                width: Get.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/pic.png.jpg"),
                                  fit: BoxFit.cover),
                              color: Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            height: 45,
                            width: Get.width * 0.145,
                          ),
                          SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Mamie Windler",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    "Votes:",
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xffafafaf)),
                                  ),
                                  Text(
                                    "3",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SvgPicture.asset("assets/arrow icon.svg"),
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
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/MODEL.jpg"),
                                  fit: BoxFit.cover),
                              color: Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            height: 45,
                            width: Get.width * 0.145,
                          ),
                          SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Dr. Randolph Grimes",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    "Votes:",
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xffafafaf)),
                                  ),
                                  Text(
                                    "12",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SvgPicture.asset("assets/arrow icon.svg"),
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
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/rae lil black.jpg"),
                                  fit: BoxFit.cover),
                              color: Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            height: 45,
                            width: Get.width * 0.145,
                          ),
                          SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Sandy Rippin",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    "Votes:",
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xffafafaf)),
                                  ),
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SvgPicture.asset("assets/arrow icon.svg"),
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
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/display pic.jpg"),
                                  fit: BoxFit.cover),
                              color: Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            height: 45,
                            width: Get.width * 0.145,
                          ),
                          SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Joyce Ortiz",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    "Votes:",
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xffafafaf)),
                                  ),
                                  Text(
                                    "10",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SvgPicture.asset("assets/arrow icon.svg"),
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
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/MODEL.jpg"),
                                  fit: BoxFit.cover),
                              color: Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            height: 45,
                            width: Get.width * 0.145,
                          ),
                          SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Jane Adams",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    "Votes:",
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xffafafaf)),
                                  ),
                                  Text(
                                    "10",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SvgPicture.asset("assets/arrow icon.svg"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
