import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knock/Starting%20Pages/First_Page.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return First_Page();
  }
}
