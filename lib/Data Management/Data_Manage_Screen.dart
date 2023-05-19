import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Data_Manage_Screen extends StatelessWidget {
  const Data_Manage_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset("assets/Back Navigator.svg")),
                  Text(
                    "Data Management",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xfffafafa),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    height: 30,
                    width: 30,
                    child: SvgPicture.asset(
                      "assets/3 dots.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
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
            ),
            SizedBox(height: 30),
            TabBar(
              indicatorColor: Color(0xffed7d2b),
              tabs: <Widget>[
                Tab(
                  icon: Text(
                    "Import",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  icon: Text(
                    "Export",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xfffafafa),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: 60,
                        width: Get.width * 0.9,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/import export.svg"),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "File Import",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Mon Jun 20 2022, 12:06:36",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xffa3a3a3)),
                                  )
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
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/import export.svg"),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "File Import",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Mon Jun 20 2022, 12:06:36",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xffa3a3a3)),
                                  )
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
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/import export.svg"),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "File Import",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Mon Jun 20 2022, 12:06:36",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xffa3a3a3)),
                                  )
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
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/import export.svg"),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "File Import",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Mon Jun 20 2022, 12:06:36",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xffa3a3a3)),
                                  )
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
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/import export.svg"),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "File Import",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Mon Jun 20 2022, 12:06:36",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xffa3a3a3)),
                                  )
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
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/import export.svg"),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "File Import",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Mon Jun 20 2022, 12:06:36",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xffa3a3a3)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xfffafafa),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: 60,
                        width: Get.width * 0.9,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/import export.svg"),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "File Export",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Mon Jun 20 2022, 12:06:36",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xffa3a3a3)),
                                  )
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
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/import export.svg"),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "File Export",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Mon Jun 20 2022, 12:06:36",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xffa3a3a3)),
                                  )
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
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/import export.svg"),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "File Export",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Mon Jun 20 2022, 12:06:36",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xffa3a3a3)),
                                  )
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
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/import export.svg"),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "File Export",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Mon Jun 20 2022, 12:06:36",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xffa3a3a3)),
                                  )
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
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/import export.svg"),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "File Export",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Mon Jun 20 2022, 12:06:36",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xffa3a3a3)),
                                  )
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
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/import export.svg"),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "File Export",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Mon Jun 20 2022, 12:06:36",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xffa3a3a3)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
