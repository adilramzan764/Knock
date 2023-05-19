import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Team_Profile extends StatelessWidget {
  const Team_Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                  color: Color(0xfff08505),
                  height: 150,
                  width: Get.width,
                  child: Column(
                    children: [
                      SizedBox(height: 40),
                      Text(
                        "Team Profile",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: (width / 2) - 50,
                top: 100,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/rae lil black.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 100,
                  width: 100,
                ),
              ),
              Positioned(
                  top: 200,
                  left: (width / 2) - 180,
                  child: Container(
                    height: Get.height - 200,
                    // Adjusted height to allow scrolling
                    width: Get.width,
                    child: SingleChildScrollView(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Rae lil black",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        Text(
                          "Team Lead",
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                        SizedBox(height: 10),
                        Text(
                          " Nihil voluptatem delectus praesentium sunt aut aut\nhic. Aut itaque sequi aut enim nemo. Nesciunt nemo\n                         quo. Qui aut fugit.",
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                        SizedBox(height: 15),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xfffafafa),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                          ),
                          height: Get.height,
                          width: Get.width,
                          child: Column(
                            children: [
                              SizedBox(height: 15),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 60),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "Campaigns",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xffa3a3a3)),
                                        ),
                                        Text(
                                          "12",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Locations",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xffa3a3a3)),
                                        ),
                                        Text(
                                          "6",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Customers",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xffa3a3a3)),
                                        ),
                                        Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                  ),
                                  height: Get.height,
                                  width: Get.width,
                                  child: Column(
                                    children: [
                                      TabBar(
                                        indicatorColor: Color(0xffed7d2b),
                                        tabs: [
                                          Tab(
                                            icon: Text(
                                              "Personal Information",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Tab(
                                            icon: Text(
                                              "Compaigns",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: TabBarView(children: [
                                          Column(
                                            children: [
                                              SvgPicture.asset(
                                                  "assets/Personal Info.svg"),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xfffafafa),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                height: 60,
                                                width: Get.width * 0.9,
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15),
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                      labelText: "Country:",
                                                      labelStyle: TextStyle(
                                                          fontSize: 13,
                                                          color: Color(
                                                              0xffa3a3a3)),
                                                      hintText: "Bolivia",
                                                      hintStyle: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      border: InputBorder.none,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xfffafafa),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                height: 60,
                                                width: Get.width * 0.9,
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15),
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                      labelText: "State:",
                                                      labelStyle: TextStyle(
                                                          fontSize: 13,
                                                          color: Color(
                                                              0xffa3a3a3)),
                                                      hintText: "West Virginia",
                                                      hintStyle: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      border: InputBorder.none,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xfffafafa),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                height: 60,
                                                width: Get.width * 0.9,
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15),
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                      labelText: "City:",
                                                      labelStyle: TextStyle(
                                                          fontSize: 13,
                                                          color: Color(
                                                              0xffa3a3a3)),
                                                      hintText: "Wildermanstad",
                                                      hintStyle: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      border: InputBorder.none,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xfffafafa),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                height: 60,
                                                width: Get.width * 0.9,
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15),
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                      labelText: "Street:",
                                                      labelStyle: TextStyle(
                                                          fontSize: 13,
                                                          color: Color(
                                                              0xffa3a3a3)),
                                                      hintText:
                                                          "0068 Eduardo Centers",
                                                      hintStyle: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      border: InputBorder.none,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 20),
                                              Container(
                                                color: Color(0xffececec),
                                                height: 0.5,
                                                width: Get.width * 0.9,
                                              ),
                                              SizedBox(height: 20),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xfffafafa),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                height: 60,
                                                width: Get.width * 0.9,
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15),
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                      labelText: "Email:",
                                                      labelStyle: TextStyle(
                                                          fontSize: 13,
                                                          color: Color(
                                                              0xffa3a3a3)),
                                                      hintText:
                                                          "Marilyn.Legros97@hotmail.com",
                                                      hintStyle: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      border: InputBorder.none,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              SvgPicture.asset(
                                                  "assets/Group 2307.svg"),
                                              SizedBox(height: 20),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 15),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xffed7d2b),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(32),
                                                      ),
                                                      height: 40,
                                                      width: 120,
                                                      child: Center(
                                                        child: Text(
                                                          "Campaigns Area",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 10),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xfffef2ea),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(32),
                                                      ),
                                                      height: 40,
                                                      width: 100,
                                                      child: Center(
                                                        child: Text(
                                                          "Campaigns",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          )
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                  )),
            ],
          ),
        ));
  }
}
