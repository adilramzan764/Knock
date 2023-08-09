import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:knock/Starting%20Pages/First_Page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'BottomBar/BottomNavBar.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  final bool loggedIn = prefs.getBool('isLoggedIn') ?? false;
  String accountType = prefs.getString("accounttype").toString();
  runApp(MyApp(loggedIn: loggedIn,accounttype: accountType));
  configLoading();


}
void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.light
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.orange
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;

}



class MyApp extends StatelessWidget {
  final bool loggedIn;
  final String accounttype;

  MyApp({required this.loggedIn,required this.accounttype});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    print(accounttype);

    int check=-1 ;// Default value

    if (accounttype == 'Canvasser') {
      check = 1;
    } else if (accounttype == 'Political Campaigns') {
      check = 0;
    } else if (accounttype == 'Cooperate Account') {
      check = 2;
    }
    print(check);

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: loggedIn ? BottomBarPage(check: check) : const First_Page(),
      builder: EasyLoading.init(),


    );}}
