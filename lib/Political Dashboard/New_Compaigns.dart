import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class New_Compaings extends StatefulWidget {
  New_Compaings({Key? key}) : super(key: key);

  @override
  State<New_Compaings> createState() => _New_CompaingsState();
}

class _New_CompaingsState extends State<New_Compaings> {
  List<String> questions = ['Question No 1:'];

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
                    "New Campaigns",
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
                height: 60,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Campaign Title:",
                        labelStyle:
                            TextStyle(fontSize: 14, color: Color(0xffa3a3a3)),
                        hintText: "Power Canvassing",
                        hintStyle: TextStyle(
                            fontSize: 15,
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
              SizedBox(height: 10),
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
                width: Get.width,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 18, left: 15),
                    border: InputBorder.none,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SvgPicture.asset(
                        "assets/from to.svg",
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    hintText: "From:",
                    hintStyle:
                        TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
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
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SvgPicture.asset(
                        "assets/from to.svg",
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    hintText: "To:",
                    hintStyle:
                        TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 0.5,
                width: Get.width,
                color: Color(0xffefefef),
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
                    contentPadding: EdgeInsets.only(top: 10, left: 15),
                    border: InputBorder.none,
                    hintText: "Route From:",
                    hintStyle:
                        TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
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
                    contentPadding: EdgeInsets.only(top: 10, left: 15),
                    border: InputBorder.none,
                    hintText: "Route To:",
                    hintStyle:
                        TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Add Questions",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 10),
              Container(

                height: Get.height * 0.200,
                width: Get.width,
                child: ListView.builder(
                  itemCount: questions.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xfffafafa),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextFormField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 15, top: 10),
                          border: InputBorder.none,
                          hintText: questions[index],
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 40,
                width: 200,
                child: ElevatedButton(
                  onPressed: () async{
                    // Add a new question when the button is pressed
                    setState(() {
                      int newQuestionNumber = questions.length + 1;
                      questions.add("Question No $newQuestionNumber:");
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffed7d2b),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: Text(
                    "Add Question",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
              ),

              SizedBox(height: 30),
              SizedBox(height: 30),
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
                      "Add Compaign",
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
