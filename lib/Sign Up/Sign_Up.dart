import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:knock/Log%20in/Log_In.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  TextEditingController Name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController partyname = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  List<bool> fieldError = [false, false, false, false, false];

  final _formKey = GlobalKey<FormState>();

  // bool _showError = false;
  // bool _showpass = false;

  // void _submitForm(BuildContext context) {
  //   setState(() {
  //     fieldError = true;
  //   });
  //
  //   print(password.text);
  // }

  String? textFieldValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required.';
    }

    // Additional validation logic can be added here

    return null; // Return null if the input is valid
  }

  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 40),
              Center(
                child: SvgPicture.asset("assets/orange vector.svg"),
              ),
              SizedBox(height: 20),
              Text(
                "Welcome to Knock!",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Please enter following details to Sign Up.",
                style: TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
              ),
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  border: Border.all(color: Color(0xffED7D2B), width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 60,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextFormField(
                    controller: Name,
                    // validator: textFieldValidator,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Name:",
                        labelStyle:
                            TextStyle(fontSize: 13, color: Colors.black),
                        hintText: "Jessica Lehner",
                        hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              // if (_showError)
              //   Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 20),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Text(
              //           _validateInput(password.text) ?? '',
              //           style: TextStyle(
              //             color: Colors.red,
              //           ),
              //         ),
              //         SizedBox()
              //       ],
              //     ),
              //   ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 60,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextFormField(
                    controller: email,
                    validator: textFieldValidator,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Email:",
                      labelStyle:
                          TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                      hintText: "********",
                      hintStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
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
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 10)),
                    icon: SvgPicture.asset("assets/drop down arrow.svg"),
                    value: "Political Affiliation:",
                    items: [
                      DropdownMenuItem(
                        value: "Political Affiliation:",
                        child: Text(
                          "Political Affiliation:",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                        ),
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Political Affiliation: 1",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                        ),
                        value: "Political Affiliation: 1",
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Political Affiliation: 2",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                        ),
                        value: "Political Affiliation: 2",
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Political Affiliation: 3",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                        ),
                        value: "Political Affiliation: 3",
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
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextFormField(
                    controller: partyname,
                    validator: textFieldValidator,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Political Party Name:",
                      labelStyle:
                          TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                      hintText: "********",
                      hintStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
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
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextFormField(
                    controller: password,
                    validator: textFieldValidator,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Password:",
                        labelStyle:
                            TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                        hintText: "********",
                        hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        suffixIcon: SvgPicture.asset(
                          "assets/Frame.svg",
                          fit: BoxFit.scaleDown,
                        )),
                    obscureText: true,
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
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextFormField(
                    controller: confirmpassword,
                    validator: textFieldValidator,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Confirm Password::",
                        labelStyle:
                            TextStyle(fontSize: 15, color: Color(0xffb3b3b3)),
                        hintText: "********",
                        hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        suffixIcon: SvgPicture.asset(
                          "assets/Frame.svg",
                          fit: BoxFit.scaleDown,
                        )),
                    obscureText: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: ischecked,
                      onChanged: (bool? value) {
                        setState(() {
                          ischecked = value!;
                        });
                      },
                    ),
                    Text(
                      "By clicking this you accept Term Conditions\n& Privacy Policy.",
                      style: TextStyle(fontSize: 13, color: Color(0xffb3b3b3)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                height: 50,
                child: ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      // Set error state for each field
                      fieldError[0] = email.text.isEmpty;
                      fieldError[1] = partyname.text.isEmpty;
                      fieldError[2] = password.text.isEmpty;
                      fieldError[3] = confirmpassword.text.isEmpty;
                    });
                    if (_formKey.currentState!.validate()) {
                      // _formKey;
                    }
                    // _submitForm(context);
                    // if (_formKey.currentState!.validate()) {
                    //   showModalBottomSheet(
                    //     context: context,
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.only(
                    //             topLeft: Radius.circular(20),
                    //             topRight: Radius.circular(20))),
                    //     builder: (BuildContext context) {
                    //       return Container(
                    //         height: 320,
                    //         decoration: BoxDecoration(
                    //             color: Colors.white,
                    //             borderRadius: BorderRadius.only(
                    //                 topLeft: Radius.circular(20),
                    //                 topRight: Radius.circular(20))),
                    //         child: Column(children: [
                    //           SizedBox(height: 20),
                    //           Padding(
                    //             padding:
                    //                 const EdgeInsets.symmetric(horizontal: 15),
                    //             child: Row(
                    //               mainAxisAlignment:
                    //                   MainAxisAlignment.spaceBetween,
                    //               children: [
                    //                 Text(
                    //                   "Upload affiliation\nDocuments.",
                    //                   style: TextStyle(
                    //                       fontSize: 30,
                    //                       color: Colors.black,
                    //                       fontWeight: FontWeight.bold),
                    //                 ),
                    //                 InkWell(
                    //                   onTap: () {
                    //                     Navigator.of(context).pop();
                    //                   },
                    //                   child: Container(
                    //                     decoration: BoxDecoration(
                    //                       color: Color(0xfffef2ea),
                    //                       borderRadius:
                    //                           BorderRadius.circular(100),
                    //                     ),
                    //                     height: 50,
                    //                     width: 50,
                    //                     child: SvgPicture.asset(
                    //                       "assets/cross.svg",
                    //                       fit: BoxFit.scaleDown,
                    //                     ),
                    //                   ),
                    //                 )
                    //               ],
                    //             ),
                    //           ),
                    //           SizedBox(height: 10),
                    //           Padding(
                    //             padding: const EdgeInsets.only(left: 15),
                    //             child: Align(
                    //               alignment: Alignment.topLeft,
                    //               child: Text(
                    //                 "Upload documents for verification.",
                    //                 style: TextStyle(
                    //                     fontSize: 15, color: Color(0xffb3b3b3)),
                    //               ),
                    //             ),
                    //           ),
                    //           SizedBox(height: 20),
                    //           Padding(
                    //             padding: const EdgeInsets.only(left: 15),
                    //             child: Align(
                    //               alignment: Alignment.topLeft,
                    //               child: Container(
                    //                 decoration: BoxDecoration(
                    //                   color: Color(0xffb3b3b3),
                    //                   borderRadius: BorderRadius.circular(12),
                    //                 ),
                    //                 height: 80,
                    //                 width: 90,
                    //                 child: SvgPicture.asset(
                    //                   "assets/upload arrow.svg",
                    //                   fit: BoxFit.scaleDown,
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //           SizedBox(height: 20),
                    //           SizedBox(
                    //             width: MediaQuery.of(context).size.width / 1.1,
                    //             height: 50,
                    //             child: ElevatedButton(
                    //                 onPressed: () {},
                    //                 style: ElevatedButton.styleFrom(
                    //                     primary: Color(0xffED7D2B),
                    //                     shape: RoundedRectangleBorder(
                    //                         borderRadius:
                    //                             BorderRadius.circular(32))),
                    //                 child: Text(
                    //                   "Proceed for verification",
                    //                   style: TextStyle(
                    //                       fontSize: 17, color: Colors.white),
                    //                 )),
                    //           ),
                    //         ]),
                    //       );
                    //     },
                    //   );
                    // } else {
                    //   print("UnSuccessfull");
                    // }
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffED7D2B),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
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
                  color: Color(0xfffafafa),
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
                  color: Color(0xfffafafa),
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
                    "Already have an account?",
                    style: TextStyle(fontSize: 13, color: Color(0xffb3b3b3)),
                  ),
                  SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      Get.to(() => Log_In());
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 13, color: Color(0xffED7D2B)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
