import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:knock/Coperate/New_Compaigns.dart';

import 'Compaign_Details.dart';

class Coperate_Compaigns extends StatelessWidget {
  const Coperate_Compaigns({Key? key}) : super(key: key);

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
                        Get.to(() => New_Compaings());
                      },
                      child: SvgPicture.asset("assets/add icon.svg"))
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xfffafafa),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 50,
                    width: Get.width * 0.8,
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
                  SvgPicture.asset("assets/search left side.svg"),
                ],
              ),
              SizedBox(height: 8),
              SvgPicture.asset("assets/Group3000.svg"),
              SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 50,
                width: Get.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 5)),
                    icon: SvgPicture.asset("assets/drop down black.svg"),
                    value: "Arkansas - USA",
                    items: [
                      DropdownMenuItem(
                        value: "Arkansas - USA",
                        child: Row(
                          children: [
                            Text(
                              "Arkansas",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              " - USA",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xffb3b3b3)),
                            ),
                          ],
                        ),
                      ),
                      DropdownMenuItem(
                        child: Row(
                          children: [
                            Text(
                              "Arkansas",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                            Text(
                              " - UK",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xffb3b3b3)),
                            ),
                          ],
                        ),
                        value: "Arkansas - UK",
                      ),
                      DropdownMenuItem(
                        child: Row(
                          children: [
                            Text(
                              "Arkansas",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                            Text(
                              " - PK",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xffb3b3b3)),
                            ),
                          ],
                        ),
                        value: "Arkansas - PK",
                      ),
                      DropdownMenuItem(
                        child: Row(
                          children: [
                            Text(
                              "Arkansas",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                            Text(
                              " - AFG",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xffb3b3b3)),
                            ),
                          ],
                        ),
                        value: "Arkansas - AFG",
                      ),
                    ],
                    onChanged: (value) {
                      print("changed");
                    },
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
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Get.to(() => Compaigns_Details());
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
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
                                              fontSize: 11,
                                              color: Colors.black),
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
                                              fontSize: 11,
                                              color: Colors.black),
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
                            )
                          ],
                        ),
                        SvgPicture.asset("assets/call back.svg"),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
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
                          )
                        ],
                      ),
                      SvgPicture.asset("assets/no home.svg"),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
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
                          )
                        ],
                      ),
                      SvgPicture.asset("assets/call back.svg"),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
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
                          )
                        ],
                      ),
                      SvgPicture.asset("assets/no home.svg"),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
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
                          )
                        ],
                      ),
                      SvgPicture.asset("assets/call back.svg"),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
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
                          )
                        ],
                      ),
                      SvgPicture.asset("assets/no home.svg"),
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
