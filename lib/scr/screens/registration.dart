import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/scr/helpers/screen_navigation.dart';
import 'package:food/scr/screens/login.dart';

import '../helpers/commons.dart';
import '../widgets/custom_Text.dart';

class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/lg.png",
                  width: 150,
                  height: 240,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "User Name",
                      icon: Icon(Icons.person),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email",
                      icon: Icon(Icons.email),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      icon: Icon(Icons.lock),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                    color: red,
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 4, right: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                          text: 'Register',
                          size: 22,
                          color: white,
                          weight: FontWeight.w600),
                      // TextFormField(
                      //   decoration: InputDecoration(
                      //     border: InputBorder.none,
                      //     hintText: "Email",
                      //     icon: Icon(Icons.email),
                      //
                      //   ),
                      //
                      // ),

                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                changeScreen(context, login());
              },
              child: Align(
                  alignment: Alignment.center,
                  child: CustomText(
                      text: "Loging Here",
                      size: 20,
                      color: black,
                      weight: FontWeight.w500)),
            )
          ],
        ),
      ),
    );
  }
}
