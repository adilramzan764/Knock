import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Political_Notification extends StatelessWidget {
  const Political_Notification({Key? key}) : super(key: key);

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
                children: [
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset("assets/Back Navigator.svg")),
                  SizedBox(width: 100),
                  Text(
                    "Notifications",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/mark read.svg"),
                      SizedBox(width: 5),
                      Text(
                        "Mark as read",
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffdc3027),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        height: 10,
                        width: 10,
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xfffef2ea),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        height: 60,
                        width: 60,
                        child: SvgPicture.asset(
                          "assets/bell icon.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Survey Updated",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Survery Updated by John.",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xffb3b3b3)),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "just now",
                    style: TextStyle(fontSize: 12, color: Color(0xffb3b3b3)),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffdc3027),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        height: 10,
                        width: 10,
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xfffef2ea),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        height: 60,
                        width: 60,
                        child: SvgPicture.asset(
                          "assets/bell icon.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Survey Updated",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Survery Updated by John.",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xffb3b3b3)),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "just now",
                    style: TextStyle(fontSize: 12, color: Color(0xffb3b3b3)),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Recents",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  )),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xfffef2ea),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        height: 60,
                        width: 60,
                        child: SvgPicture.asset(
                          "assets/bell icon.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "New Interaction",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Call Back from Billy",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xffb3b3b3)),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "3 days ago",
                    style: TextStyle(fontSize: 12, color: Color(0xffb3b3b3)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xfffef2ea),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        height: 60,
                        width: 60,
                        child: SvgPicture.asset(
                          "assets/bell icon.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "New Team Member",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "New member added succesfully",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xffb3b3b3)),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "2 week ago",
                    style: TextStyle(fontSize: 12, color: Color(0xffb3b3b3)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xfffef2ea),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        height: 60,
                        width: 60,
                        child: SvgPicture.asset(
                          "assets/bell icon.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Location Update",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "New Location is update",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xffb3b3b3)),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "3 week ago",
                    style: TextStyle(fontSize: 12, color: Color(0xffb3b3b3)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
