import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:knock/ApiServices/DeleteAccount_ApiService.dart';
import 'package:knock/Log%20in/Log_In.dart';


class Set_Screen extends StatelessWidget {
  const Set_Screen({Key? key}) : super(key: key);

  static Future<void> _startLoading(BuildContext context) async {
    // _timer?.cancel();
    await EasyLoading.show(
      status: 'Deleting..',
      maskType: EasyLoadingMaskType.black,
    );
    await Future.delayed(Duration(seconds: 2));
    await EasyLoading.dismiss().then((value) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (BuildContext context) => Log_In()),
            (Route<dynamic> route) => false,
      );
      Get.snackbar(
        'Account Deleted',
        'Your account has been deleted successfully.',
        snackPosition: SnackPosition.TOP,
        borderRadius: 20,
        backgroundColor: Colors.black12,
        duration: Duration(seconds: 3),
        margin: EdgeInsets.only(top: 8.0, left: 10, right: 10),
        icon: Icon(Icons.person, color: Colors.grey),
        shouldIconPulse: false,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.bounceInOut,
      );
    });


    print('EasyLoading show');
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
              Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset("assets/Back Navigator.svg"))),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Settings",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 60,
                width: Get.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Personal Information",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SvgPicture.asset("assets/setting forward arrow.svg"),
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Preferences Settings",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SvgPicture.asset("assets/setting forward arrow.svg"),
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Security",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SvgPicture.asset("assets/setting forward arrow.svg"),
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Notification",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SvgPicture.asset("assets/setting forward arrow.svg"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 0.5,
                width: Get.width,
                color: Color(0xffececec),
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 60,
                width: Get.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Terms & Conditions",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SvgPicture.asset("assets/setting forward arrow.svg"),
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Privacy Policies",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SvgPicture.asset("assets/setting forward arrow.svg"),
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "About Knock",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SvgPicture.asset("assets/setting forward arrow.svg"),
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Contact Us",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SvgPicture.asset("assets/setting forward arrow.svg"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),





              InkWell(
                onTap: (){
                  _dialogBuilder(context);



                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xfffafafa),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 60,
                  width: Get.width * 0.9,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delete Account",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SvgPicture.asset("assets/setting forward arrow.svg"),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 35,)
            ],
          ),
        ),
      ),
    );
  }
  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          title: Text(
            'Confirm Delete',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: Text('Are you sure you want to delete your account?'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(true); // Confirm the action
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey, // Use your desired color
                      ),
                      child: Text('Cancel'),
                    )
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        DeleteAccount_ApiService.delaccount().then((ahsan) {
                          print("this is the id: ${ahsan.user}");
                          // Navigator.pop(context);
                          _startLoading(context);
                          // deletiondone(context,ahsan);
                          // _login(context,ahsan.user!.id.toString());
                        }
                        );

                        // _startLoading(context);




                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffED7D2B), // Use your desired color
                      ),
                      child: Text('Delete'),
                    ),
                  ),

                ],
              ),
            ),
          ],
        );;
      },
    );
  }

  Future<void> deletiondone(BuildContext context,
      // DeleteUserModel data
      ) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),

          content:
          // data.user!=null?
          // Text('${data.error}') : const
          Text('Account Deleted Successfully') ,
          actions: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child:  ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => Log_In()),
                          (Route<dynamic> route) => false,
                    );

                    },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffED7D2B), // Use your desired color
                  ),
                  child: Text('OK'),
                ),
              ),
            ),
          ],
        );;
      },
    );
  }


}
