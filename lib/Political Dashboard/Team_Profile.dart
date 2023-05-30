import 'package:flutter/material.dart';
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
                  height: Get.height * 0.190,
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
                  child: Column(
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
                        height: 60,
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
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 50,
                            child: AppBar(
                              bottom: TabBar(
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
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ));
  }

  Widget text(BuildContext context, String hint) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xfffafafa),
        borderRadius: BorderRadius.circular(15),
      ),
      height: 60,
      width: Get.width * 0.9,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          decoration: InputDecoration(
            labelText: "Email:",
            labelStyle: TextStyle(fontSize: 13, color: Color(0xffa3a3a3)),
            hintText: "${hint}",
            hintStyle: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
