import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:knock/List%20View%20Projects/Team_Member_List.dart';
import 'package:knock/Political%20Dashboard/Add_New_Member.dart';

class Team_Members extends StatelessWidget {
  const Team_Members({Key? key}) : super(key: key);

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
                    "Team Members",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => Add_New_Member());
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
              SizedBox(height: 20),
              SizedBox(
                height: 35,
                child: ListView(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Team_Member_List(
                      Text: "All",
                      width: Get.width * 0.140,
                      color: "first",
                      color1: "a",
                    ),
                    SizedBox(width: 8),
                    Team_Member_List(
                      Text: "Jayn’s Team",
                      width: Get.width * 0.255,
                      color: "a",
                      color1: "second",
                    ),
                    SizedBox(width: 8),
                    Team_Member_List(
                      Text: "Jayn’s Team",
                      width: Get.width * 0.255,
                      color: "a",
                      color1: "second",
                    ),
                    SizedBox(width: 8),
                    Team_Member_List(
                      Text: "Jayn’s Team",
                      width: Get.width * 0.255,
                      color: "a",
                      color1: "second",
                    ),
                    SizedBox(width: 8),
                    Team_Member_List(
                      Text: "Jayn’s Team",
                      width: Get.width * 0.255,
                      color: "a",
                      color1: "second",
                    ),
                    SizedBox(width: 8),
                    Team_Member_List(
                      Text: "Jayn’s Team",
                      width: Get.width * 0.255,
                      color: "a",
                      color1: "second",
                    ),
                    SizedBox(width: 8),
                    Team_Member_List(
                      Text: "Jayn’s Team",
                      width: Get.width * 0.255,
                      color: "a",
                      color1: "second",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Total Campaigns: 7",
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
                                "Dr. Marilyn Paucek",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Team Lead",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xffafafaf)),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Capaigns:",
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          ),
                          Text(
                            " 34",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xffafafaf)),
                          ),
                        ],
                      )
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
                                "Shawn Jenkins",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Manager",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xffafafaf)),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Capaigns:",
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          ),
                          Text(
                            " 33",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xffafafaf)),
                          ),
                        ],
                      )
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
                                "Leslie Veum",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Canvasser",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xffafafaf)),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Capaigns:",
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          ),
                          Text(
                            " 21",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xffafafaf)),
                          ),
                        ],
                      )
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
                                "Sandy Conn",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Canvasser",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xffafafaf)),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Capaigns:",
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          ),
                          Text(
                            " 32",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xffafafaf)),
                          ),
                        ],
                      )
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
                                "Robin Becker",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Team Lead",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xffafafaf)),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Capaigns:",
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          ),
                          Text(
                            " 11",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xffafafaf)),
                          ),
                        ],
                      )
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
                                "Jay Jenkins",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Manager",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xffafafaf)),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Capaigns:",
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          ),
                          Text(
                            " 2",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xffafafaf)),
                          ),
                        ],
                      )
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
                                "Mr. Albert Spinka",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Canvasser",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xffafafaf)),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Capaigns:",
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          ),
                          Text(
                            " 37",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xffafafaf)),
                          ),
                        ],
                      )
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
