import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:horizontal_center_date_picker/datepicker_controller.dart';
import 'package:knock/Data%20Management/Data_Manage_Screen.dart';
import 'package:knock/District%20Map/Map.dart';
import 'package:knock/Notification/Political_Notification.dart';
import 'package:knock/Political%20Dashboard/Team_Profile.dart';
import 'package:knock/Setting/Set_Screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../ApiServices/Logout_Api.dart';
import '../Log in/Log_In.dart';
import '../Models/LogoutModel.dart';
import '../Logout_Dialog.dart';
import '../Political Dashboard/Manage_Campaigns.dart';

class Cooperate_Dashboard extends StatefulWidget {
  const Cooperate_Dashboard({Key? key}) : super(key: key);

  @override
  State<Cooperate_Dashboard> createState() => _PoliticalState();
}

class _PoliticalState extends State<Cooperate_Dashboard> {

  void _logout(BuildContext context) async {
    await _saveLoggedIn(false);


  }
  Future<void> _saveLoggedIn(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', value);
  }

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
              SizedBox(height: 50),
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
              SizedBox(height: 30),
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
              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Get.to(() => Manage_Campaigns());
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
              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Get.to(() => Data_Manage_Screen());
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/drawer import.svg"),
                    SizedBox(width: 8),
                    Text(
                      "Data Management",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
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
              SizedBox(height: 30),
              InkWell(
                onTap: (){
                  LogoutDialog.showResponseDialog(context);
                },
                child: Padding(
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
                        "View on Map",
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xffed7d2b),
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Get.to(() => Team_Profile());
                },
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
                              "Susie Crist",
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
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Get.to(() => Team_Profile());
                },
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
                              "Susie Crist",
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
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Get.to(() => Team_Profile());
                },
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
                              "Susie Crist",
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
            ],
          ),
        ),
      ),
    );
  }
}
Future<void> _dialogBuilder(BuildContext context, UserResponseLogout data) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Response'),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (data.message != null) Text(' ${data.message}'),

            // Text('LogIn Successful'),

            // Add more user properties as needed
          ],
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.headline6,
            ),
            child: const Text('Ok'),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Log_In()),
                    (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      );
    },
  );
}


class SalesData {
  final DateTime year;
  final double sales;

  SalesData(this.year, this.sales);
}
