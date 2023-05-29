import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class New_Voter extends StatelessWidget {
  const New_Voter({Key? key}) : super(key: key);

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
                  Text(
                    "Walk Sheet",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
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
                        labelText: "Customer Name:",
                        labelStyle:
                            TextStyle(fontSize: 12, color: Color(0xffb3b3b3)),
                        hintText: "Robin Jay",
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
                        labelText: "Phone:",
                        labelStyle:
                            TextStyle(fontSize: 12, color: Color(0xffb3b3b3)),
                        hintText: "0302-*******",
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
                        labelText: "Email:",
                        labelStyle:
                            TextStyle(fontSize: 12, color: Color(0xffb3b3b3)),
                        hintText: "InzamamMalik@gmail.com",
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
                        labelText: "Working Designation:",
                        labelStyle:
                            TextStyle(fontSize: 12, color: Color(0xffb3b3b3)),
                        hintText: "*****",
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
                        labelText: "National Identity:",
                        labelStyle:
                            TextStyle(fontSize: 12, color: Color(0xffb3b3b3)),
                        hintText: "*****",
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
                        suffixIcon: SvgPicture.asset(
                          "assets/from to.svg",
                          fit: BoxFit.scaleDown,
                        ),
                        border: InputBorder.none,
                        labelText: "Date of Birth:",
                        labelStyle:
                            TextStyle(fontSize: 12, color: Color(0xffb3b3b3)),
                        hintText: "20/10/1999",
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
                height: Get.height * 0.220,
                width: Get.width,
                child: Column(
                  children: [
                    TextFormField(
                      maxLines: 5,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 15, top: 10),
                          border: InputBorder.none,
                          hintText: "Description:",
                          hintStyle: TextStyle(
                              fontSize: 15, color: Color(0xffb3b3b3))),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15, bottom: 10),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "0/60",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xffb3b3b3)),
                          ),
                        ),
                      ),
                    )
                  ],
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
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 10)),
                    icon: SvgPicture.asset("assets/drop arrow.svg"),
                    value: "Voted:",
                    items: [
                      DropdownMenuItem(
                        value: "Voted:",
                        child: Text(
                          "Voted:",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                        ),
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Voted: 1",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                        ),
                        value: "Voted: 1",
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Voted: 2",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                        ),
                        value: "Voted: 2",
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Voted: 3",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                        ),
                        value: "Voted: 3",
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
                        suffixIcon: SvgPicture.asset(
                          "assets/from to.svg",
                          fit: BoxFit.scaleDown,
                        ),
                        border: InputBorder.none,
                        labelText: "Vote Date:",
                        labelStyle:
                            TextStyle(fontSize: 12, color: Color(0xffb3b3b3)),
                        hintText: "20/10/1999",
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
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
              SvgPicture.asset("assets/Group 2374.svg"),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 60,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 5)),
                    icon: SvgPicture.asset("assets/drop down frame.svg"),
                    value: "Select State:",
                    items: [
                      DropdownMenuItem(
                        value: "Select State:",
                        child: Text(
                          "Select State:",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xffb3b3b3),
                          ),
                        ),
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Select State:1",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                        ),
                        value: "Select State:1",
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Select State:2",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                        ),
                        value: "Select State:2",
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
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 5)),
                    icon: SvgPicture.asset("assets/drop down frame.svg"),
                    value: "Select District:",
                    items: [
                      DropdownMenuItem(
                        value: "Select District:",
                        child: Text(
                          "Select District:",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xffb3b3b3),
                          ),
                        ),
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Jhelum",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                        ),
                        value: "Jhelum",
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Lahore",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                        ),
                        value: "Lahore",
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
                        contentPadding: EdgeInsets.only(top: 8),
                        border: InputBorder.none,
                        hintText: "Country:",
                        hintStyle:
                            TextStyle(fontSize: 14, color: Color(0xffb3b3b3))),
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
                        contentPadding: EdgeInsets.only(top: 8),
                        border: InputBorder.none,
                        hintText: "City:",
                        hintStyle:
                            TextStyle(fontSize: 14, color: Color(0xffb3b3b3))),
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
                        contentPadding: EdgeInsets.only(top: 8),
                        border: InputBorder.none,
                        hintText: "Street:",
                        hintStyle:
                            TextStyle(fontSize: 14, color: Color(0xffb3b3b3))),
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
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 8),
                        border: InputBorder.none,
                        hintText: "Member of House:",
                        hintStyle:
                            TextStyle(fontSize: 14, color: Color(0xffb3b3b3))),
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 5)),
                    icon: SvgPicture.asset("assets/drop down frame.svg"),
                    value: "Guardian:",
                    items: [
                      DropdownMenuItem(
                        value: "Guardian:",
                        child: Text(
                          "Guardian:",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xffb3b3b3),
                          ),
                        ),
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Guardian:1",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                        ),
                        value: "Guardian:1",
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Guardian:2",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                        ),
                        value: "Guardian:2",
                      ),
                    ],
                    onChanged: (value) {
                      print("changed");
                    },
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 50,
                width: Get.width,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffed7d2b),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32))),
                    child: Text(
                      "Add Customer",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    )),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
