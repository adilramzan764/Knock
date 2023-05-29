import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:knock/Canvasser/Canvasser_Customer.dart';
import 'package:knock/Canvasser/Walk_Sheet.dart';
import 'package:knock/Coperate/District.dart';

import '../Coperate/Coperate_Compaigns.dart';
import '../Data Management/Data_Manage_Screen.dart';
import '../List View Projects/Political_Dashboard_Listview.dart';
import '../Notification/Political_Notification.dart';
import '../Political Dashboard/Team_Members.dart';
import '../Setting/Set_Screen.dart';
import 'Canvasser_Compaigns.dart';

class Canvasser_Home extends StatelessWidget {
  const Canvasser_Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 40),
              Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset("assets/drawer cross.svg"))),
              SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/rae lil black.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Terri Cartwright",
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Lead Canvasser",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/drawer home pic.svg"),
                    SizedBox(width: 8),
                    Text(
                      "Home",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    )
                  ],
                ),
              ),
              SizedBox(height: 22),
              InkWell(
                onTap: () {
                  Get.to(() => District());
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/drawer map.svg"),
                    SizedBox(width: 8),
                    Text(
                      "District Map",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22),
              InkWell(
                onTap: () {
                  Get.to(() => Canvasser_Compaigns());
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/drawer compagins.svg"),
                    SizedBox(width: 8),
                    Text(
                      "Campaigns",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22),
              InkWell(onTap: (){Get.to(() => Walk_Sheet());},
                child: Row(
                  children: [
                    SvgPicture.asset("assets/drawer hustory.svg"),
                    SizedBox(width: 8),
                    Text(
                      "Walk Sheet",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22),
              InkWell(
                onTap: () {
                  Get.to(() => Canvasser_Customer());
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/customer icon.svg"),
                    SizedBox(width: 8),
                    Text(
                      "Customers List",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22),
              InkWell(
                onTap: () {
                  Get.to(() => Set_Screen());
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/drawer setting.svg"),
                    SizedBox(width: 8),
                    Text(
                      "Setting",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/drawer logout.svg"),
                    SizedBox(width: 8),
                    Text(
                      "Log Out",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(builder: (context) {
                    return InkWell(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: SvgPicture.asset("assets/Drawer.svg"));
                  }),
                  Text("Cooperate Dashboard",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500)),
                  InkWell(
                      onTap: () {
                        Get.to(() => Political_Notification());
                      },
                      child: SvgPicture.asset("assets/Notification.svg")),
                ],
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Good morning,",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Terri Cartwright",
                  style: TextStyle(
                      fontSize: 30,
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
                height: 50,
                width: Get.width * 0.9,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: SvgPicture.asset(
                        "assets/Search.svg",
                        fit: BoxFit.scaleDown,
                      ),
                      hintText: "Search here",
                      hintStyle:
                          TextStyle(fontSize: 17, color: Color(0xffafafaf))),
                ),
              ),
              SizedBox(height: 10),
              SvgPicture.asset("assets/canvasser map.svg"),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Available Campaigns:",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(width: 5),
                      Container(
                          decoration: BoxDecoration(
                            color: Color(0xff22407a),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 18,
                          width: 18,
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          )),
                    ],
                  ),
                  Text(
                    "View All",
                    style: TextStyle(fontSize: 14, color: Color(0xffed7d2b)),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 130,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Color(0xffed7d2b),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 20,
                              width: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              )),
                          SizedBox(width: 10),
                          Text(
                            "0025 Kuvalis Landing",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff323437)),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Color(0xff14b15c),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 20,
                              width: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              )),
                          SizedBox(width: 10),
                          Text(
                            "724 Denesik Pines",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff323437)),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "To Customer:",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xffb3b3b3)),
                              ),
                              Text(
                                "Bill Oberbrunner",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 35,
                            width: 70,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xffed7d2b),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(32))),
                                child: Text(
                                  "Start",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                )),
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
                height: 130,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Color(0xffed7d2b),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 20,
                              width: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              )),
                          SizedBox(width: 10),
                          Text(
                            "5923 Camille Junction",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff323437)),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Color(0xff14b15c),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 20,
                              width: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              )),
                          SizedBox(width: 10),
                          Text(
                            "322 Bret Turnpike",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff323437)),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "To Customer:",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xffb3b3b3)),
                              ),
                              Text(
                                "Jeannette Koelpin",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 35,
                            width: 70,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xffed7d2b),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(32))),
                                child: Text(
                                  "Start",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 0.5,
                width: Get.width,
                color: Color(0xffefefef),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "New Route:",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
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
                            )),
                        Container(
                          width: Get.width * 0.003,
                          height: 50,
                          color: Color(0xffb3b3b3),
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Color(0xff14b15c),
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
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xffb3b3b3), width: 1),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 45,
                          width: Get.width * 0.8,
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 10, bottom: 5),
                                border: InputBorder.none,
                                hintText: "1023 Rice Brook Park, New York",
                                hintStyle: TextStyle(
                                    fontSize: 15, color: Colors.black)),
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xffb3b3b3), width: 1),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 45,
                          width: Get.width * 0.8,
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 10, bottom: 5),
                                border: InputBorder.none,
                                hintText: "143 Rogers Kittery, New York",
                                hintStyle: TextStyle(
                                    fontSize: 15, color: Colors.black)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Canvassing to:",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Jacqueline-Fernandez.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 55,
                    width: Get.width * 0.155,
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ernest Barton",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Customer",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xfffb3b3b3)),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 45,
                    width: Get.width * 0.445,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xfff14336),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: Text(
                          "Decline",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    height: 45,
                    width: Get.width * 0.445,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffed7d2b),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: Text(
                          "Accept",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                height: 0.5,
                width: Get.width,
                color: Color(0xffefefef),
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 130,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Color(0xffed7d2b),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 20,
                              width: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              )),
                          SizedBox(width: 10),
                          Text(
                            "3125 Cordelia Ridge",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff323437)),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Color(0xff14b15c),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 20,
                              width: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              )),
                          SizedBox(width: 10),
                          Text(
                            "261 Viviane Shores",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff323437)),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "To Customer:",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xffb3b3b3)),
                      ),
                      Text(
                        "Merle McGlynn",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
                height: 130,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Color(0xffed7d2b),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 20,
                              width: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              )),
                          SizedBox(width: 10),
                          Text(
                            "60701 Maxime Meadow",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff323437)),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Color(0xff14b15c),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 20,
                              width: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              )),
                          SizedBox(width: 10),
                          Text(
                            "3455 Gerlach Manor",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff323437)),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "To Customer:",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xffb3b3b3)),
                      ),
                      Text(
                        "Leslie Bartoletti",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
                height: 130,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Color(0xffed7d2b),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 20,
                              width: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              )),
                          SizedBox(width: 10),
                          Text(
                            "543 Henry Park",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff323437)),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Color(0xff14b15c),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 20,
                              width: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              )),
                          SizedBox(width: 10),
                          Text(
                            "1214 Morissette Freeway",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff323437)),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "To Customer:",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xffb3b3b3)),
                      ),
                      Text(
                        "Vincent Feeney Sr.",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )
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
