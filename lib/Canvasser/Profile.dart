import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Column(children: [
                Container(
                  color: Color(0xffeb7d04),
                  height: 150,
                  width: Get.width,
                ),
                SizedBox(height: 55),
                Text(
                  "Robin Jay",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                Text(
                  "Customer",
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xffb3b3b3),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "     Veritatis qui soluta delectus nihil eius. Sit fugiat\ndignissimos inventore eum eveniet. Maiores facere ut\n       accusantium ratione. Quo et et iusto deleniti.",
                  style: TextStyle(fontSize: 13, color: Color(0xffb3b3b3)),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffefefef),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                  ),
                  height: 70,
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Responses",
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xffb3b3b3)),
                            ),
                            Text(
                              "32",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Total Survey",
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xffb3b3b3)),
                            ),
                            Text(
                              "44",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Interactions",
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xffb3b3b3)),
                            ),
                            Text(
                              "12",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                TabBar(
                  indicatorColor: Color(0xffed7d2b),
                  tabs: <Widget>[
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SvgPicture.asset("assets/canvasser map.svg"),
                            SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xfffafafa),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 60,
                              width: Get.width,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.only(top: 10, left: 15),
                                  border: InputBorder.none,
                                  labelText: "Country:",
                                  labelStyle: TextStyle(
                                      fontSize: 13, color: Color(0xffb3b3b3)),
                                  hintText: "Buckinghamshire",
                                  hintStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
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
                              width: Get.width,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.only(top: 10, left: 15),
                                  border: InputBorder.none,
                                  labelText: "State:",
                                  labelStyle: TextStyle(
                                      fontSize: 13, color: Color(0xffb3b3b3)),
                                  hintText: "Arkansas",
                                  hintStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
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
                              width: Get.width,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.only(top: 10, left: 15),
                                  border: InputBorder.none,
                                  labelText: "City:",
                                  labelStyle: TextStyle(
                                      fontSize: 13, color: Color(0xffb3b3b3)),
                                  hintText: "Lake Amely",
                                  hintStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
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
                              width: Get.width,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.only(top: 10, left: 15),
                                  border: InputBorder.none,
                                  labelText: "Street:",
                                  labelStyle: TextStyle(
                                      fontSize: 13, color: Color(0xffb3b3b3)),
                                  hintText: "488 Kenneth Park",
                                  hintStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
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
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xfffafafa),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 60,
                              width: Get.width,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.only(top: 10, left: 15),
                                  border: InputBorder.none,
                                  labelText: "Email:",
                                  labelStyle: TextStyle(
                                      fontSize: 13, color: Color(0xffb3b3b3)),
                                  hintText: "Robin.65@yahoo.com",
                                  hintStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
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
                              width: Get.width,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.only(top: 10, left: 15),
                                  border: InputBorder.none,
                                  labelText: "Phone:",
                                  labelStyle: TextStyle(
                                      fontSize: 13, color: Color(0xffb3b3b3)),
                                  hintText: "+444-797-8449",
                                  hintStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
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
                              width: Get.width,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.only(top: 10, left: 15),
                                  border: InputBorder.none,
                                  labelText: "Date of Birth:",
                                  labelStyle: TextStyle(
                                      fontSize: 13, color: Color(0xffb3b3b3)),
                                  hintText: "18-Oct-1999",
                                  hintStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
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
                              width: Get.width,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.only(top: 10, left: 15),
                                  border: InputBorder.none,
                                  labelText: "National Identity Number:",
                                  labelStyle: TextStyle(
                                      fontSize: 13, color: Color(0xffb3b3b3)),
                                  hintText: "3244-44352-24234-67-6",
                                  hintStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
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
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xfffafafa),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 60,
                              width: Get.width,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.only(top: 10, left: 15),
                                  border: InputBorder.none,
                                  labelText: "Members of House:",
                                  labelStyle: TextStyle(
                                      fontSize: 13, color: Color(0xffb3b3b3)),
                                  hintText: "5",
                                  hintStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
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
                              width: Get.width,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.only(top: 10, left: 15),
                                  border: InputBorder.none,
                                  labelText: "Guardian: ",
                                  labelStyle: TextStyle(
                                      fontSize: 13, color: Color(0xffb3b3b3)),
                                  hintText: "Yes",
                                  hintStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          SvgPicture.asset("assets/canvasser map.svg"),

                        ],
                      ),
                    )
                  ]),
                )
              ]),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
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
                            child: SvgPicture.asset(
                                "assets/back navigator white.svg")),
                        Text(
                          "Profile",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/display pic.jpg"),
                              fit: BoxFit.cover),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
