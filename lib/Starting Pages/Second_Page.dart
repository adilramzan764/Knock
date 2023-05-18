import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:knock/Log%20in/Log_In.dart';
import 'package:knock/Sign%20Up/Sign_Up.dart';

class Second_Page extends StatelessWidget {
  const Second_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SvgPicture.asset(
                "assets/Group 2373.svg",
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, right: 15),
                child: Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Sign_Up();
                      }));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      height: 35,
                      width: MediaQuery.of(context).size.width / 5,
                      child: Center(
                        child: Text(
                          "Skip",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "All Solutions on\nFingertips!",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Deleniti consequuntur vitae nam. Illum libero\ntenetur quaerat quasi qui. Minima numquam neque.\nRem deserunt velit et asperiores hic. Eum\nex voluptatem nam nisi ut in. Molestiae qui\nsit animi natus dolores deleniti est\naperiam et.",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Align(
                alignment: Alignment.topLeft,
                child: SvgPicture.asset("assets/Slider.svg")),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.1,
            height: 50,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Log_In();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    primary: Color(0xffED7D2B),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32))),
                child: Text(
                  "Get Started",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
