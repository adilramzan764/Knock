import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:knock/ApiServices/ApiServicesForLogIn.dart';

import 'package:knock/Sign%20Up/Sign_Up.dart';
import 'package:knock/Terms%20%20Conditions/Terms_Conditions.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../BottomBar/BottomNavBar.dart';
import '../Models/LoginModel.dart';





class Log_In extends StatefulWidget {
  const Log_In({Key? key}) : super(key: key);

  @override
  State<Log_In> createState() => _Log_InState();
}

class _Log_InState extends State<Log_In> {

  //Shared Prefrence
  // static const String _loggedInKey = 'isLoggedIn';


  void _login(BuildContext context,String id) async {
    // Simulate a successful login
    await _saveLoggedIn(id);

  }


  Future<void> _saveLoggedIn(String id) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);
    await prefs.setString("id", id);

  }

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  bool _showError = false;
  bool _showpass = false;

  String? _validateInput(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a value';
    }
    return null;
  }

  void _submitForm(BuildContext context) {
    setState(() {
      _showError = true;
    });

    print(password.text);

    if (_validateInput(password.text) == null) {
      print("true");
      showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        builder: (BuildContext context) {
          return Container(
            height: 360,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Choose account\nfor Login.",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xfffef2ea),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          height: 50,
                          width: 50,
                          child: SvgPicture.asset(
                            "assets/cross.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Please type of account you want Sign Up for.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xffb3b3b3),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      print(1);
                      Get.to(() => BottomBarPage(check: 1,));
                      // Perform th desired action for the "Canvasser" button
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffED7D2B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Canvasser",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                        SvgPicture.asset("assets/forward arrow.svg"),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => BottomBarPage(check: 0));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffED7D2B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Political Campaigns",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                        SvgPicture.asset("assets/forward arrow.svg"),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => BottomBarPage(check: 2));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffED7D2B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Cooperate Account",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                        SvgPicture.asset("assets/forward arrow.svg"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );

      // Validation passed, perform the desired action
      // e.g., submit the form, update the data, etc.
      print('Form submitted successfully');
    } else {
      print("false");
    }
  }
  void _signupForm(BuildContext context) {

      showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        builder: (BuildContext context) {
          return Container(
            height: 360,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Choose account\nfor Signup.",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xfffef2ea),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          height: 50,
                          width: 50,
                          child: SvgPicture.asset(
                            "assets/cross.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Please type of account you want Sign Up for.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xffb3b3b3),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () async {
                      final SharedPreferences prefs = await SharedPreferences.getInstance();

                      await prefs.setString("accounttype", 'Canvasser');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sign_Up(type: 'Canvasser',)),
                      );
                      // Perform th desired action for the "Canvasser" button
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffED7D2B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Canvasser",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                        SvgPicture.asset("assets/forward arrow.svg"),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () async {
                      final SharedPreferences prefs = await SharedPreferences.getInstance();

                      await prefs.setString("accounttype", 'Political Campaigns');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sign_Up(type: 'Political Campaigns'), // Replace with the desired type
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffED7D2B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Political Campaigns",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                        SvgPicture.asset("assets/forward arrow.svg"),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () async {
                      final SharedPreferences prefs = await SharedPreferences.getInstance();

                      await prefs.setString("accounttype", 'Cooperate Account');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sign_Up(type: 'Cooperate Account'), // Replace with the desired type
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffED7D2B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Cooperate Account",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                        SvgPicture.asset("assets/forward arrow.svg"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );

      // Validation passed, perform the desired action
      // e.g., submit the form, update the data, etc.


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Center(
              child: SvgPicture.asset("assets/orange vector.svg"),
            ),
            SizedBox(height: 20),
            Text(
              "Hello Again!",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Please enter following details to Login.",
              style: TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
            ),
            SizedBox(height: 30),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: Color(0xfffafafa),
                  //     borderRadius: BorderRadius.circular(15),
                  //   ),
                  //   height: 60,
                  //   width: MediaQuery.of(context).size.width / 1.1,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffED7D2B), width: 2.0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          border: InputBorder.none,
                          hintText: "example@xyz.com",
                          hintStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      onSaved: (String? value) {
                        print(value);
                        email.text = value.toString();
                      },
                    ),
                  ),
                  if (_showError)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        _validateInput(password.text) ?? '',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  // ),
                  SizedBox(height: 10),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: Color(0xfffafafa),
                  //     borderRadius: BorderRadius.circular(15),
                  //   ),
                  //   height: 60,
                  //   width: MediaQuery.of(context).size.width / 1.1,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: password,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffED7D2B), width: 2.0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          border: InputBorder.none,
                          hintText: "*******",
                          hintStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          suffixIcon: SvgPicture.asset(
                            "assets/Frame.svg",
                            fit: BoxFit.scaleDown,
                          )),
                      obscureText: true,
                      // validator: (String? value) {
                      //   print(value);
                      //   if (value!.isEmpty) {
                      //     return 'Please Enter Password';
                      //   }
                      //   return null;
                      // },
                      onSaved: (String? value) {
                        print(value);
                        password.text = value.toString();
                      },
                    ),
                  ),
                  // ),
                  if (_showError)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        _validateInput(password.text) ?? '',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(fontSize: 13, color: Color(0xffb3b3b3)),
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              height: 50,
              child: ElevatedButton(
                  onPressed: () async {



                    ApiServicesForLogIn.login(email.text, password.text)
                        .then((ahsan) {
                      // print("this is the id: ${ahsan.user!.id}");
                      _dialogBuilder(context, ahsan);
                      _login(context,ahsan.user!.id.toString());
                    }).catchError((error) {
                      print("Error occurred: $error");
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffED7D2B),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  )),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 0.5,
                  width: MediaQuery.of(context).size.width / 4,
                  color: Color(0xffb3b3b3),
                ),
                SizedBox(width: 8),
                Text(
                  "OR",
                  style: TextStyle(fontSize: 16, color: Color(0xffb3b3b3)),
                ),
                SizedBox(width: 8),
                Container(
                  height: 0.5,
                  width: MediaQuery.of(context).size.width / 4,
                  color: Color(0xffb3b3b3),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              height: 60,
              width: MediaQuery.of(context).size.width / 1.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/google.svg"),
                  SizedBox(width: 8),
                  Text(
                    "Login with Google",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              height: 60,
              width: MediaQuery.of(context).size.width / 1.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/facebook.svg"),
                  SizedBox(width: 8),
                  Text(
                    "Login with Facebook",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn’t have any account?",
                  style: TextStyle(fontSize: 13, color: Color(0xffb3b3b3)),
                ),
                SizedBox(width: 5),
                InkWell(
                  onTap: () {
    _signupForm(context);

                  },
                  child: Text(
                    "Signup",
                    style: TextStyle(fontSize: 13, color: Color(0xffED7D2B)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return Terms_Conditions();
                }));
              },
              child: Text(
                "Terms & Conditions | Privacy Policies",
                style: TextStyle(fontSize: 13, color: Color(0xffb3b3b3)),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context, UserResponseLogin data) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),),
          child: AlertDialog(
            // title: const Text('Response'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (data.message != null) Text('Message: ${data.message}'),
                if (data.error != null) Text('Error: ${data.error}'),
                if (data.user != null && data.token != null)
                  Text('LogIn Successful'),



                // Add more user properties as needed
                ],


            ),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.headline6,
                ),
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                  if (data.user != null && data.token != null)
                  _submitForm(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

}
