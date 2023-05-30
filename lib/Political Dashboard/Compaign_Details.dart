import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Customer.dart';

class Compaigns_Details extends StatelessWidget {
  const Compaigns_Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset("assets/Back Navigator.svg")),
                  Text(
                    "Campaign Details",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(),
                ],
              ),
              SizedBox(height: 20),
              SvgPicture.asset("assets/deail map.svg"),
              SizedBox(height: 15),
              Text(
                "Power Canvassing",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Canvassing",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              SizedBox(height: 5),
              Text(
                "Nostrum eos amet omnis dolorem corrupti\naccusantium recusandae. Ut sapiente vel mollitia\nautem non excepturi. Nihil voluptatem delectus\npraesentium sunt aut aut hic. Aut itaque sequi aut\nenim nemo. Nesciunt nemo quo. Qui aut fugit.",
                style: TextStyle(fontSize: 13, color: Colors.black),
              ),
              SizedBox(height: 20),
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
              SizedBox(height: 20),
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
                        "Emilio Muller",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Host",
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
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xfffafafa),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: 55,
                        width: Get.width * 0.155,
                        child: SvgPicture.asset(
                          "assets/customer icon.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Abel, Jacob, John and 9+",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Customer",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xfffb3b3b3)),
                          )
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => Customer());
                      },
                      child: SvgPicture.asset("assets/arrow icon.svg"))
                ],
              ),
              SizedBox(height: 15),
              Container(
                color: Color(0xffefefef),
                height: 0.5,
                width: Get.width,
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
                    contentPadding: EdgeInsets.only(top: 18, left: 15),
                    border: InputBorder.none,
                    labelText: "From:",
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xffb3b3b3),
                    ),
                    hintText: "24-01-2023",
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
                    contentPadding: EdgeInsets.only(top: 18, left: 15),
                    border: InputBorder.none,
                    labelText: "To:",
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xffb3b3b3),
                    ),
                    hintText: "24-21-2023",
                    hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                color: Color(0xffefefef),
                height: 0.5,
                width: Get.width,
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
                    contentPadding: EdgeInsets.only(top: 18, left: 15),
                    border: InputBorder.none,
                    suffixIcon: SvgPicture.asset(
                      "assets/no home.svg",
                      fit: BoxFit.scaleDown,
                    ),
                    labelText: "Status:",
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xffb3b3b3),
                    ),
                    hintText: "Ended (Call Back)",
                    hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 15),
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
                                borderRadius: BorderRadius.circular(32))),
                        child: Text(
                          "Delete",
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
                                borderRadius: BorderRadius.circular(32))),
                        child: Text(
                          "Edit",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )),
                  ),
                ],
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
