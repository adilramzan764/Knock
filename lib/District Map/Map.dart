import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_sliding_up_panel/sliding_up_panel_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

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
              Expanded(
                child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
              ),
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
              child: Column(
                children: [
                  SizedBox(height: 5),
                  SizedBox(
                    height: 10.0,
                    child: SvgPicture.asset("assets/Rectangle 87.svg"),
                  ),
                  SizedBox(height: 5),
                  Flexible(
                    child: Container(
                      child: ListView.separated(
                        controller: scrollController,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Container(
                              decoration: BoxDecoration(
                                color: Color(0xfffafafa),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 60,
                              width: Get.width * 0.9,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
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
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 5,
                          );
                        },
                        shrinkWrap: true,
                        itemCount: 1,
                      ),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
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
                            labelStyle:
                                TextStyle(fontSize: 14, color: Color(0xffa3a3a3)),
                            hintText: "Power Canvassing",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text(
                        "Demographics:",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xfffafafa),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 90,
                          width: Get.width * 0.445,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Population:",style: TextStyle(fontSize: 14,color: Colors.black),),
                                Text("3,456",style: TextStyle(fontSize:30,color: Colors.black,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xfffafafa),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 90,
                          width: Get.width * 0.445,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Reg. Voters:",style: TextStyle(fontSize: 14,color: Colors.black),),
                                Text("3,211",style: TextStyle(fontSize:30,color: Colors.black,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  TabBar(
                    indicatorColor: Color(0xffed7d2b),
                    tabs: <Widget>[
                      Tab(
                        icon: Text(
                          "Voters",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Tab(
                        icon: Text(
                          "Past Elections",
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
                        SingleChildScrollView(
                          child: Column(
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
                        ),
                        SingleChildScrollView(
                          child: Column(
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
                        ),
                      ],
                    ),
                  ),
                ],
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
