import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'ApiServices/Logout_Api.dart';
import 'Log in/Log_In.dart';

class LogoutDialog {
  static void _logout(BuildContext context) async {
    await _saveLoggedIn(false);
  }

  static Future<void> _saveLoggedIn(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', value);
    prefs.clear();
  }

  static Future<void> _startLoading(BuildContext context) async {
    // _timer?.cancel();
    await EasyLoading.show(
      status: 'loging out..',
      maskType: EasyLoadingMaskType.black,
    );
    await Future.delayed(Duration(seconds: 2));
    await EasyLoading.dismiss().then((value) => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (BuildContext context) => Log_In()),
          (Route<dynamic> route) => false,
        ));

    print('EasyLoading show');
  }

  static void showResponseDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  SvgPicture.asset("assets/drawer logout.svg"),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Are you sure you want to logout?"),
                ],
              ),

              // Text('LogIn Successful'),

              // Add more user properties as needed
            ],
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  )),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        _logout(context);

                        LogoutApi.logout().then((data) {
                          // Navigator.pop(context);
                          _startLoading(context);

                          if (data.message != null) {
                            print(data
                                .message); // Print the message to the console
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffED7D2B), // Use your desired color
                      ),
                      child: Text('Logout'),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 30,)
          ],
        );
      },
    );
  }
// Future<void> _dialogBuilder(BuildContext context, UserResponseLogin data) {
//   return showDialog<void>(
//     context: context,
//     builder: (BuildContext context) {
//       return Container(
//
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),),
//         child: AlertDialog(
//           // title: const Text('Response'),
//           content: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               if (data.message != null) Text('Message: ${data.message}'),
//               if (data.error != null) Text('Error: ${data.error}'),
//               if (data.user != null && data.token != null)
//                 Text('LogIn Successful'),
//
//
//
//               // Add more user properties as needed
//               ],
//
//
//           ),
//           actions: <Widget>[
//             TextButton(
//               style: TextButton.styleFrom(
//                 textStyle: Theme.of(context).textTheme.headline6,
//               ),
//               child: const Text('OK'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 if (data.user != null && data.token != null)
//                 _submitForm(context);
//               },
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }
}
