import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:knock/Canvasser/Analytics.dart';
import 'package:knock/Canvasser/Second_Canvasser_Detail.dart';

import '../Coperate/Compaign_Details.dart';
import 'Canvasser_detail.dart';

class Canvasser_Compaigns extends StatelessWidget {
  const Canvasser_Compaigns({Key? key}) : super(key: key);

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset("assets/Back Navigator.svg")),
                  Text(
                    "Manage Campaigns",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => Analytics());
                      },
                      child: SvgPicture.asset("assets/canvasser analysis.svg"))
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
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Total Campaigns: 12",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Get.to(() => Canvasser_detail());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xfffafafa),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 70,
                  width: Get.width * 0.9,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/orange speaker.svg"),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Host: Billy",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              "03835 Donnelly Point",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xffb3b3b3)),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "From:",
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.black),
                                    ),
                                    Text(
                                      " 24-01-2023",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Color(0xffb3b3b3)),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "To:",
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.black),
                                    ),
                                    Text(
                                      " 24-02-2023",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Color(0xffb3b3b3)),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(onTap: (){Get.to(() => Second_Canvasser_Detail());},
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xfffafafa),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 70,
                  width: Get.width * 0.9,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/orange speaker.svg"),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Host: Shawn",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              "3555 Goyette Lane",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xffb3b3b3)),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "From:",
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.black),
                                    ),
                                    Text(
                                      " 24-01-2023",
                                      style: TextStyle(
                                          fontSize: 11, color: Color(0xffb3b3b3)),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "To:",
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.black),
                                    ),
                                    Text(
                                      " 24-02-2023",
                                      style: TextStyle(
                                          fontSize: 11, color: Color(0xffb3b3b3)),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 70,
                width: Get.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/orange speaker.svg"),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Host: John",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            "022 Kirlin Spurs",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffb3b3b3)),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "From:",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                  Text(
                                    " 24-01-2023",
                                    style: TextStyle(
                                        fontSize: 11, color: Color(0xffb3b3b3)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "To:",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                  Text(
                                    " 24-02-2023",
                                    style: TextStyle(
                                        fontSize: 11, color: Color(0xffb3b3b3)),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
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
                height: 70,
                width: Get.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/orange speaker.svg"),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Host: Adam",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            "09974 Adrienne Locks",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffb3b3b3)),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "From:",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                  Text(
                                    " 24-01-2023",
                                    style: TextStyle(
                                        fontSize: 11, color: Color(0xffb3b3b3)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "To:",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                  Text(
                                    " 24-02-2023",
                                    style: TextStyle(
                                        fontSize: 11, color: Color(0xffb3b3b3)),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
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
                height: 70,
                width: Get.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/orange speaker.svg"),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Host: Henry",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            "145 Providenci Passage",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffb3b3b3)),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "From:",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                  Text(
                                    " 24-01-2023",
                                    style: TextStyle(
                                        fontSize: 11, color: Color(0xffb3b3b3)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "To:",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                  Text(
                                    " 24-02-2023",
                                    style: TextStyle(
                                        fontSize: 11, color: Color(0xffb3b3b3)),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
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
                height: 70,
                width: Get.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/orange speaker.svg"),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Host: Neesham",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            "8793 Elna Underpass",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffb3b3b3)),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "From:",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                  Text(
                                    " 24-01-2023",
                                    style: TextStyle(
                                        fontSize: 11, color: Color(0xffb3b3b3)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "To:",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                  Text(
                                    " 24-02-2023",
                                    style: TextStyle(
                                        fontSize: 11, color: Color(0xffb3b3b3)),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
