import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:knock/Canvasser/New_Customer.dart';

class Canvasser_Customer extends StatelessWidget {
  const Canvasser_Customer({Key? key}) : super(key: key);

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
                    "Customers",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => New_Customer());
                      },
                      child: SvgPicture.asset("assets/add icon.svg"))
                ],
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 50,
                width: Get.width,
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
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Total Customers: 6",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 65,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/customer icon.svg", height: 35),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Carole Schmeler",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "03835 Donnelly Point",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffb3b3b3)),
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
                height: 65,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/customer icon.svg", height: 35),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lois Reichert",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "780 Russel Turnpike",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffb3b3b3)),
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
                height: 65,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/customer icon.svg", height: 35),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Douglas Nikolaus",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "380 Corine Cape",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffb3b3b3)),
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
                height: 65,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/customer icon.svg", height: 35),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lorenzo Rohan",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "775 Stamm Land",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffb3b3b3)),
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
                height: 65,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/customer icon.svg", height: 35),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cassandra Ruecker",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "857 Brook Terrace",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffb3b3b3)),
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
                height: 65,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/customer icon.svg", height: 35),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ms. Erin Kshlerin",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "8216 Freddy Way",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffb3b3b3)),
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
        ),
      ),
    );
  }
}
