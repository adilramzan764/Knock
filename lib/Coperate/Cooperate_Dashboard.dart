import 'package:animated_horizontal_calendar/animated_horizontal_calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:horizontal_center_date_picker/datepicker_controller.dart';
import 'package:knock/Coperate/Coperate_Compaigns.dart';
import 'package:knock/Coperate/District.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../Data Management/Data_Manage_Screen.dart';
import '../District Map/Map.dart';
import '../List View Projects/Political_Dashboard_Listview.dart';
import '../Notification/Political_Notification.dart';
import '../Political Dashboard/Manage_Campaigns.dart';
import '../Political Dashboard/Team_Members.dart';
import '../Political Dashboard/Team_Profile.dart';
import '../Setting/Set_Screen.dart';

class Cooperate_Dashboard extends StatefulWidget {
  const Cooperate_Dashboard({Key? key}) : super(key: key);

  @override
  State<Cooperate_Dashboard> createState() => _Cooperate_DashboardState();
}

class _Cooperate_DashboardState extends State<Cooperate_Dashboard> {
  var now = DateTime.now();

  DatePickerController _datePickerController = DatePickerController();
  DateTime start = DateTime.now();
  DateTime twoMonthsFromNow = DateTime.now().add(Duration(days: 30));

  String? selectedDate;

  Map<String, double> dataMap = {
    "Completion Rate \n 30%": 30,
    "Acceptance Rate \n 34%": 34,
    "Failure Rate \n 6%": 6,
    "Customer Review \n 30%": 30,
  };

  List<Color> colorList = [
    Color(0xff00ada3),
    Color(0xff374c98),
    Color(0xfff14336),
    Color(0xffffbb54),
  ];
  int a = 1;
  int b = 2;
  int c = 3;
  int d = 4;
  int e = 5;

  double _getHeight(int rating) {
    switch (rating) {
      case 5:
        return 120;
      case 4:
        return 80;
      case 3:
        return 60;
      case 2:
        return 40;
      case 1:
        return 20;
      default:
        return 0;
    }
  }

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
                        "Michael Turcotte",
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Admin",
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
                  Get.to(() => MapScreen());
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/drawer map.svg"),
                    SizedBox(width: 8),
                    Text(
                      "Map",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22),
              InkWell(
                onTap: () {
                  Get.to(() => Coperate_Compaigns());
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/drawer compagins.svg"),
                    SizedBox(width: 8),
                    Text(
                      "All Campaigns",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    )
                  ],
                ),
              ),
              SizedBox(height: 22),
              Row(
                children: [
                  SvgPicture.asset("assets/drawer hustory.svg"),
                  SizedBox(width: 8),
                  Text(
                    "Canvassing Hustory",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  )
                ],
              ),
              SizedBox(height: 22),
              InkWell(
                onTap: () {
                  Get.to(() => Team_Members());
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/drawer team.svg"),
                    SizedBox(width: 8),
                    Text(
                      "Team",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    )
                  ],
                ),
              ),
              SizedBox(height: 22),
              Row(
                children: [
                  SvgPicture.asset("assets/drawer analytics.svg"),
                  SizedBox(width: 8),
                  Text(
                    "Analytics",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  )
                ],
              ),
              SizedBox(height: 22),
              InkWell(
                onTap: () {
                  Get.to(() => Data_Manage_Screen());
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/drawer import.svg"),
                    SizedBox(width: 8),
                    Text(
                      "Import Data",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    )
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
                    )
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
                    )
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Text(
                "Good morning,",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(
                "Michael Turcotte",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
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
              SizedBox(
                height: 150,
                child: ListView(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Political_Dashboard_Listview(
                      color: "first",
                      color1: "Second",
                      img: "assets/Interaction.svg",
                      text1: "Interactions",
                      text2: "65",
                    ),
                    SizedBox(width: 8),
                    Political_Dashboard_Listview(
                      color: "a",
                      color1: "b",
                      img: "assets/teams.svg",
                      text1: "Teams",
                      text2: "6",
                    ),
                    SizedBox(width: 8),
                    Political_Dashboard_Listview(
                      color: "first",
                      color1: "Second",
                      img: "assets/Interaction.svg",
                      text1: "Interactions",
                      text2: "65",
                    ),
                    SizedBox(width: 8),
                    Political_Dashboard_Listview(
                      color: "a",
                      color1: "b",
                      img: "assets/teams.svg",
                      text1: "Teams",
                      text2: "6",
                    ),
                    SizedBox(width: 8),
                    Political_Dashboard_Listview(
                      color: "first",
                      color1: "Second",
                      img: "assets/Interaction.svg",
                      text1: "Interactions",
                      text2: "65",
                    ),
                    SizedBox(width: 8),
                    Political_Dashboard_Listview(
                      color: "a",
                      color1: "b",
                      img: "assets/teams.svg",
                      text1: "Teams",
                      text2: "6",
                    ),
                    SizedBox(width: 8),
                    Political_Dashboard_Listview(
                      color: "first",
                      color1: "Second",
                      img: "assets/Interaction.svg",
                      text1: "Interactions",
                      text2: "65",
                    ),
                    SizedBox(width: 8),
                    Political_Dashboard_Listview(
                      color: "a",
                      color1: "b",
                      img: "assets/teams.svg",
                      text1: "Teams",
                      text2: "6",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Canvassers On Compaigns:",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => Manage_Campaigns());
                      },
                      child: Text(
                        "View All",
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xffed7d2b),
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              SizedBox(height: 15),
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
              SizedBox(height: 10),
              SvgPicture.asset("assets/Group 2292.svg"),
              SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xfffafafa),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 60,
                  width: Get.width * 0.9,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xfff5f5f5),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/rae lil black.jpg"),
                                fit: BoxFit.cover),
                          ),
                          height: 45,
                          width: Get.width * 0.120,
                        ),
                        SizedBox(width: 8),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Esther Wunsch",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Team Lead | Covering 2Km",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
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
                height: 60,
                width: Get.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/AAAAAA.jpg"),
                                fit: BoxFit.cover),
                            color: Color(0xfff5f5f5),
                            borderRadius: BorderRadius.circular(10)),
                        height: 45,
                        width: Get.width * 0.120,
                      ),
                      SizedBox(width: 8),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Marco Ferry",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Canvasser | Covering 3Km",
                            style: TextStyle(fontSize: 13, color: Colors.black),
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
                height: 60,
                width: Get.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/MODEL.jpg"),
                                fit: BoxFit.cover),
                            color: Color(0xfff5f5f5),
                            borderRadius: BorderRadius.circular(10)),
                        height: 45,
                        width: Get.width * 0.120,
                      ),
                      SizedBox(width: 8),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Archie Kling",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Manager | Covering 2Km",
                            style: TextStyle(fontSize: 13, color: Colors.black),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Activities:",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => Manage_Campaigns());
                    },
                    child: Text(
                      "View All",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffed7d2b)),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xfffef2ea),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 60,
                    width: Get.width * 0.160,
                    child: SvgPicture.asset(
                      "assets/call back.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Jimmy",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Interacted with",
                            style: TextStyle(fontSize: 13, color: Colors.black),
                          ),
                          Text(
                            "Shawn",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Walk Interaction",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffbfbfbf)),
                          ),
                          SizedBox(width: 3),
                          SvgPicture.asset("assets/Dot.svg"),
                          SizedBox(width: 3),
                          Text(
                            "Call Back",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffed7d2b)),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        "23 Mins ago",
                        style:
                            TextStyle(fontSize: 10, color: Color(0xffbfbfbf)),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 8),
              Container(
                color: Color(0xffececec),
                height: 1,
                width: Get.width,
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffe9ecf2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 60,
                    width: Get.width * 0.160,
                    child: SvgPicture.asset(
                      "assets/no home.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Jimmy",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Interacted with",
                            style: TextStyle(fontSize: 13, color: Colors.black),
                          ),
                          Text(
                            "Shawn",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Walk Interaction",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffbfbfbf)),
                          ),
                          SizedBox(width: 3),
                          SvgPicture.asset("assets/Dot.svg"),
                          SizedBox(width: 3),
                          Text(
                            "Call Back",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffed7d2b)),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        "30 Mins ago",
                        style:
                            TextStyle(fontSize: 10, color: Color(0xffbfbfbf)),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 8),
              Container(
                color: Color(0xffececec),
                height: 1,
                width: Get.width,
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xfffef2ea),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 60,
                    width: Get.width * 0.160,
                    child: SvgPicture.asset(
                      "assets/call back.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Jimmy",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Interacted with",
                            style: TextStyle(fontSize: 13, color: Colors.black),
                          ),
                          Text(
                            "Shawn",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Walk Interaction",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffbfbfbf)),
                          ),
                          SizedBox(width: 3),
                          SvgPicture.asset("assets/Dot.svg"),
                          SizedBox(width: 3),
                          Text(
                            "Call Back",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffed7d2b)),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        "1 day ago",
                        style:
                            TextStyle(fontSize: 10, color: Color(0xffbfbfbf)),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Campaigns Analytics:",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Export All",
                    style: TextStyle(fontSize: 13, color: Color(0xffed7d2b)),
                  )
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "January 2023",
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xfffef8f4),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    height: 50,
                    width: Get.width * 0.3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 3)),
                        icon: SvgPicture.asset("assets/drop down black.svg"),
                        value: "This week",
                        items: [
                          DropdownMenuItem(
                            value: "This week",
                            child: Text(
                              "This week",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "This week1",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            value: "This week1",
                          ),
                        ],
                        onChanged: (value) {
                          print("changed");
                        },
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 120,
                child: AnimatedHorizontalCalendar(
                    tableCalenderIcon: Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                    ),
                    date: DateTime.now(),
                    textColor: Colors.black45,
                    onDateSelected: (date) {
                      selectedDate = date;
                      print(selectedDate);
                    }),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Get.to(() => Manage_Campaigns());
                },
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.white),
                    height: 250,
                    width: 320,
                    child: Stack(
                      children: [
                        SfCartesianChart(
                          plotAreaBorderColor: Colors.orange,
                          isTransposed: false,
                          borderWidth: 0,
                          borderColor: Colors.orange,
                          backgroundColor: Colors.orange,
                          primaryXAxis: DateTimeAxis(
                            // Hide x-axis line, gridlines, ticks, and labels
                            axisLine: AxisLine(width: 0),
                            majorTickLines: MajorTickLines(size: 0),
                            minorTickLines: MinorTickLines(size: 0),
                            majorGridLines: MajorGridLines(width: 0),
                            minorGridLines: MinorGridLines(width: 0),
                            labelStyle: TextStyle(color: Colors.transparent),
                          ),

                          // Hide y-axis line, gridlines, ticks, and labels
                          primaryYAxis: NumericAxis(
                            // Hide y-axis line, gridlines, ticks, and labels
                            axisLine: AxisLine(width: 0),
                            majorTickLines: MajorTickLines(size: 0),
                            minorTickLines: MinorTickLines(size: 0),
                            majorGridLines: MajorGridLines(width: 0),
                            minorGridLines: MinorGridLines(width: 0),
                            labelStyle: TextStyle(color: Colors.transparent),
                          ),
                          series: <ChartSeries>[
                            LineSeries<SalesData, DateTime>(
                                dataSource: <SalesData>[
                                  SalesData(DateTime(2021, 1, 1), 10),
                                  SalesData(DateTime(2021, 2, 1), 20),
                                  SalesData(DateTime(2021, 3, 1), 15),
                                  SalesData(DateTime(2021, 4, 1), 30),
                                  SalesData(DateTime(2021, 5, 1), 25),
                                  SalesData(DateTime(2021, 6, 1), 17),
                                  SalesData(DateTime(2021, 7, 1), 10),
                                  SalesData(DateTime(2021, 8, 1), 20),
                                  SalesData(DateTime(2021, 9, 1), 15),
                                  SalesData(DateTime(2021, 10, 1), 25),
                                  SalesData(DateTime(2021, 11, 1), 32),
                                  SalesData(DateTime(2021, 12, 1), 45),
                                ],
                                xValueMapper: (SalesData sales, _) =>
                                    sales.year,
                                yValueMapper: (SalesData sales, _) =>
                                    sales.sales,
                                color: Colors.white,
                                width: 5)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            children: [
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Active Campaigns:",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SvgPicture.asset("assets/graph arrow.svg"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text("Active:",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white)),
                                      Text(
                                        " 12",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "+12,4%",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              ),
              SizedBox(height: 15),
              Container(
                color: Color(0xffececec),
                height: 1,
                width: Get.width,
              ),
              SizedBox(height: 15),
              PieChart(
                dataMap: dataMap,
                animationDuration: Duration(milliseconds: 800),
                chartLegendSpacing: 32,
                chartRadius: Get.width * 0.355,
                colorList: colorList,
                initialAngleInDegree: 0,
                chartType: ChartType.ring,
                ringStrokeWidth: 32,
                legendOptions: LegendOptions(
                  showLegendsInRow: false,
                  showLegends: true,
                  legendTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                chartValuesOptions: ChartValuesOptions(
                  showChartValueBackground: false,
                  showChartValues: false,
                  decimalPlaces: 1,
                ),
                // gradientList: ---To add gradient colors---
                // emptyColorGradient: ---Empty Color gradient---
              ),
              SizedBox(height: 15),
              Container(
                color: Color(0xffececec),
                height: 1,
                width: Get.width,
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffffbb54),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                height: 220,
                width: Get.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Customer Ratings:",
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            "Total: 5.0",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          SizedBox(width: 3),
                          SvgPicture.asset("assets/Star.svg")
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: _getHeight(a),
                                  width: 20,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SvgPicture.asset(
                                      "assets/Star.svg",
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: _getHeight(b),
                                  width: 20,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text(
                                      "2",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SvgPicture.asset(
                                      "assets/Star.svg",
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: _getHeight(c),
                                  width: 20,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text(
                                      "3",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SvgPicture.asset(
                                      "assets/Star.svg",
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: _getHeight(d),
                                  width: 20,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text(
                                      "4",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SvgPicture.asset(
                                      "assets/Star.svg",
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: _getHeight(e),
                                  width: 20,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SvgPicture.asset(
                                      "assets/Star.svg",
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SalesData {
  final DateTime year;
  final double sales;

  SalesData(this.year, this.sales);
}
