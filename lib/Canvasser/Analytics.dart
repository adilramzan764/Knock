import 'package:animated_horizontal_calendar/animated_horizontal_calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:horizontal_center_date_picker/datepicker_controller.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../Coperate/Cooperate_Dashboard.dart';

class Analytics extends StatefulWidget {
  const Analytics({Key? key}) : super(key: key);

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  var now = DateTime.now();

  DatePickerController _datePickerController = DatePickerController();
  DateTime start = DateTime.now();
  DateTime twoMonthsFromNow = DateTime.now().add(Duration(days: 30));

  String? selectedDate;

  Map<String, double> dataMap = {
    "Completion Rate \n 30%": 30,
    "Acceptance Rate \n 34%": 34,
    "Failure Rate \n 6%": 6,
    "Customer Review \n 30%": 30,
  };

  List<Color> colorList = [
    Color(0xff00ada3),
    Color(0xff374c98),
    Color(0xfff14336),
    Color(0xffffbb54),
  ];

  int a = 1;
  int b = 2;
  int c = 3;
  int d = 4;
  int e = 5;

  double _getHeight(int rating) {
    switch (rating) {
      case 5:
        return 120;
      case 4:
        return 80;
      case 3:
        return 60;
      case 2:
        return 40;
      case 1:
        return 20;
      default:
        return 0;
    }
  }

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
                    "Analytics",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "January 2023",
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xfffef8f4),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    height: 50,
                    width: Get.width * 0.3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 3)),
                        icon: SvgPicture.asset("assets/drop down black.svg"),
                        value: "This week",
                        items: [
                          DropdownMenuItem(
                            value: "This week",
                            child: Text(
                              "This week",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "This week1",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            value: "This week1",
                          ),
                        ],
                        onChanged: (value) {
                          print("changed");
                        },
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 120,
                child: AnimatedHorizontalCalendar(
                    tableCalenderIcon: Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                    ),
                    date: DateTime.now(),
                    textColor: Colors.black45,
                    onDateSelected: (date) {
                      var selectedDate = date;
                      print(selectedDate);
                    }),
              ),
              SizedBox(height: 10),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Colors.white),
                  height: 250,
                  width: 320,
                  child: Stack(
                    children: [
                      SfCartesianChart(
                        plotAreaBorderColor: Colors.orange,
                        isTransposed: false,
                        borderWidth: 0,
                        borderColor: Colors.orange,
                        backgroundColor: Colors.orange,
                        primaryXAxis: DateTimeAxis(
                          // Hide x-axis line, gridlines, ticks, and labels
                          axisLine: AxisLine(width: 0),
                          majorTickLines: MajorTickLines(size: 0),
                          minorTickLines: MinorTickLines(size: 0),
                          majorGridLines: MajorGridLines(width: 0),
                          minorGridLines: MinorGridLines(width: 0),
                          labelStyle: TextStyle(color: Colors.transparent),
                        ),

                        // Hide y-axis line, gridlines, ticks, and labels
                        primaryYAxis: NumericAxis(
                          // Hide y-axis line, gridlines, ticks, and labels
                          axisLine: AxisLine(width: 0),
                          majorTickLines: MajorTickLines(size: 0),
                          minorTickLines: MinorTickLines(size: 0),
                          majorGridLines: MajorGridLines(width: 0),
                          minorGridLines: MinorGridLines(width: 0),
                          labelStyle: TextStyle(color: Colors.transparent),
                        ),
                        series: <ChartSeries>[
                          LineSeries<SalesData, DateTime>(
                              dataSource: <SalesData>[
                                SalesData(DateTime(2021, 1, 1), 10),
                                SalesData(DateTime(2021, 2, 1), 20),
                                SalesData(DateTime(2021, 3, 1), 15),
                                SalesData(DateTime(2021, 4, 1), 30),
                                SalesData(DateTime(2021, 5, 1), 25),
                                SalesData(DateTime(2021, 6, 1), 17),
                                SalesData(DateTime(2021, 7, 1), 10),
                                SalesData(DateTime(2021, 8, 1), 20),
                                SalesData(DateTime(2021, 9, 1), 15),
                                SalesData(DateTime(2021, 10, 1), 25),
                                SalesData(DateTime(2021, 11, 1), 32),
                                SalesData(DateTime(2021, 12, 1), 45),
                              ],
                              xValueMapper: (SalesData sales, _) => sales.year,
                              yValueMapper: (SalesData sales, _) => sales.sales,
                              color: Colors.white,
                              width: 5)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Active Campaigns:",
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SvgPicture.asset("assets/graph arrow.svg"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text("Active:",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white)),
                                    Text(
                                      " 12",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text(
                                  "+12,4%",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )),
              SizedBox(height: 15),
              Container(
                color: Color(0xffececec),
                height: 1,
                width: Get.width,
              ),
              SizedBox(height: 15),
              PieChart(
                dataMap: dataMap,
                animationDuration: Duration(milliseconds: 800),
                chartLegendSpacing: 32,
                chartRadius: Get.width * 0.355,
                colorList: colorList,
                initialAngleInDegree: 0,
                chartType: ChartType.ring,
                ringStrokeWidth: 32,
                legendOptions: LegendOptions(
                  showLegendsInRow: false,
                  showLegends: true,
                  legendTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                chartValuesOptions: ChartValuesOptions(
                  showChartValueBackground: false,
                  showChartValues: false,
                  decimalPlaces: 1,
                ),
                // gradientList: ---To add gradient colors---
                // emptyColorGradient: ---Empty Color gradient---
              ),
              SizedBox(height: 15),
              Container(
                color: Color(0xffececec),
                height: 1,
                width: Get.width,
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffffbb54),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                height: 220,
                width: Get.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Customer Voting:",
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            "Total: 233",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),

                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: _getHeight(a),
                                  width: 20,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text(
                                      "21 Jan",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: _getHeight(b),
                                  width: 20,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text(
                                      "22 Jan",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: _getHeight(c),
                                  width: 20,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text(
                                      "23 Jan",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: _getHeight(d),
                                  width: 20,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text(
                                      "24 Jan",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: _getHeight(e),
                                  width: 20,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text(
                                      "25 Jan",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
