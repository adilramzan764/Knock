import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Add_New_Member extends StatelessWidget {
  const Add_New_Member({Key? key}) : super(key: key);

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset("assets/Back Navigator.svg")),
                  Center(
                    child: Text(
                      "Add New Member",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(),
                ],
              ),
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 100,
                width: Get.width * 0.3,
                child: SvgPicture.asset(
                  "assets/add pic.svg",
                  fit: BoxFit.scaleDown,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Upload Image",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              Text(
                "Upload image less than 5mb",
                style: TextStyle(fontSize: 14, color: Color(0xffb3b3b3)),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 60,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Member Name",
                        labelStyle:
                            TextStyle(fontSize: 12, color: Color(0xffb3b3b3)),
                        hintText: "Jonathan",
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
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
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 10)),
                    icon: SvgPicture.asset("assets/drop arrow.svg"),
                    value: "Member Role:",
                    items: [
                      DropdownMenuItem(
                        value: "Member Role:",
                        child: Text(
                          "Member Role:",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                        ),
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Member Role: 1",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                        ),
                        value: "Member Role: 1",
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Member Role: 2",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                        ),
                        value: "Member Role: 2",
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Member Role: 3",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                        ),
                        value: "Member Role: 3",
                      ),
                    ],
                    onChanged: (value) {
                      print("changed");
                    },
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
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Address",
                        labelStyle:
                            TextStyle(fontSize: 14, color: Color(0xffb3b3b3)),
                        hintText: "umt block c",
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
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
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Email",
                        labelStyle:
                            TextStyle(fontSize: 14, color: Color(0xffb3b3b3)),
                        hintText: "abcdrf@gmail.com",
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
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
