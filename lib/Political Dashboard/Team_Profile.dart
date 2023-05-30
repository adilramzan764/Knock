import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Team_Profile extends StatelessWidget {
  const Team_Profile({Key? key}) : super(key: key);

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
                  "Dr. Marilyn Paucek",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                Text(
                  "Team Lead",
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xffb3b3b3),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  " Nihil voluptatem delectus praesentium sunt aut aut\nhic. Aut itaque sequi aut enim nemo. Nesciunt nemo\n                         quo. Qui aut fugit.",
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
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Campaigns",
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Locations",
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xffb3b3b3)),
                            ),
                            Text(
                              "6",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Customers",
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xffb3b3b3)),
                            ),
                            Text(
                              "4",
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
                                  hintText: "Bolivia",
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
                                  hintText: "West Virginia",
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
                                  hintText: "Wildermanstad",
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
                                  hintText: "0068 Eduardo Centers",
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
                                  hintText: "Marilyn.Legros97@hotmail.com",
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
                                  hintText: "+818-567-6363",
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
                                  hintText: "22-Nov-1997",
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
                                  hintText: "4442-2411-4240-0",
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
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Reviews:",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xfffafafa),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 135,
                              width: Get.width,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10),
                                    RatingBar.builder(
                                      itemSize: 20,
                                      initialRating: 5,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemCount: 5,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Velit reiciendis tenetur. Veritatis perferendis sit\ndolores. Unde eos nihil. Vel quia consequatur quia\ndolorem unde. Et aspernatur eum cumque quos et\nquis non eum.",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xffb3b3b3)),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "By: Jimmy",
                                      style: TextStyle(
                                          fontSize: 15,
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
                              height: 135,
                              width: Get.width,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10),
                                    RatingBar.builder(
                                      itemSize: 20,
                                      initialRating: 5,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemCount: 5,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Amet quisquam quaerat et laborum perferendis\nvoluptate consequatur. Est et eos. Officiis dolor officia non quae magni. Architecto alias qui suscipit. Inventore dolores voluptas nobis fuga.",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xffb3b3b3)),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "By: Jacob",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [],
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
                        SvgPicture.asset("assets/back navigator white.svg"),
                        Text(
                          "Team Profile",
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
                              image: AssetImage("assets/rae lil black.jpg"),
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
