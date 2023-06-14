import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_sliding_up_panel/sliding_up_panel_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class District extends StatefulWidget {
  const District({Key? key}) : super(key: key);

  @override
  State<District> createState() => _DistrictState();
}

class _DistrictState extends State<District> {
  // final Completer<GoogleMapController> _controller =
  //     Completer<GoogleMapController>();
  //
  // static const CameraPosition _kGooglePlex = CameraPosition(
  //   target: LatLng(37.42796133580664, -122.085749655962),
  //   zoom: 14.4746,
  // );
  //
  // static const CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);

  ScrollController? scrollController;

  ///The controller of sliding up panel
  SlidingUpPanelController panelController = SlidingUpPanelController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Column(
            children: [
              Expanded(child: SvgPicture.asset("assets/canvasser map.svg")),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgPicture.asset("assets/back navigator white.svg")),
                Text(
                  "District Map",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(),
              ],
            ),
          ),
          SlidingUpPanelWidget(
            child: Container(
              decoration: ShapeDecoration(
                color: Colors.white,
                shadows: [
                  BoxShadow(
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                      color: const Color(0x11000000))
                ],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    SizedBox(height: 5),
                    SizedBox(
                      height: 10.0,
                      child: SvgPicture.asset("assets/Rectangle 87.svg"),
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
                        child: TextFormField(
                          decoration: InputDecoration(
                              suffixIcon: SvgPicture.asset(
                                "assets/drop down frame.svg",
                                fit: BoxFit.scaleDown,
                              ),
                              border: InputBorder.none,
                              labelText: "District:",
                              labelStyle: TextStyle(
                                  fontSize: 14, color: Color(0xffa3a3a3)),
                              hintText: "Power Canvassing",
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
                      width: Get.width * 0.910,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          decoration: InputDecoration(
                              suffixIcon: SvgPicture.asset(
                                "assets/drop down frame.svg",
                                fit: BoxFit.scaleDown,
                              ),
                              border: InputBorder.none,
                              labelText: "State:",
                              labelStyle: TextStyle(
                                  fontSize: 14, color: Color(0xffa3a3a3)),
                              hintText: "Power Canvassing",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Routes:",
                        style: TextStyle(
                            fontSize: 16,
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
                      height: 130,
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            SizedBox(height: 15),
                            Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xffed7d2b),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    height: 20,
                                    width: 20,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                    )),
                                SizedBox(width: 10),
                                Text(
                                  "3125 Cordelia Ridge",
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xff323437)),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xff14b15c),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    height: 20,
                                    width: 20,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                    )),
                                SizedBox(width: 10),
                                Text(
                                  "261 Viviane Shores",
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xff323437)),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "To Customer:",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xffb3b3b3)),
                                    ),
                                    Text(
                                      "Merle McGlynn",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 35,
                                  width: 70,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          primary: Color(0xffed7d2b),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(32))),
                                      child: Text(
                                        "Start",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      )),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            controlHeight: 100,
            anchor: 1,
            panelController: panelController,
            onTap: () {
              ///Customize the processing logic
              if (SlidingUpPanelStatus.expanded == panelController.status) {
                panelController.collapse();
              } else {
                panelController.expand();
              }
            },
            //Pass a onTap callback to customize the processing logic when user click control bar.
            enableOnTap: true,
            //Enable the onTap callback for control bar.
            dragDown: (details) {
              print('dragDown');
            },
            dragStart: (details) {
              print('dragStart');
            },
            dragCancel: () {
              print('dragCancel');
            },
            dragUpdate: (details) {
              print(
                  'dragUpdate,${panelController.status == SlidingUpPanelStatus.dragging ? 'dragging' : ''}');
            },
            dragEnd: (details) {
              print('dragEnd');
            },
          ),
        ]),
      ),
    );
  }
}
