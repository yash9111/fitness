// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:fitness_tracker/Screens/Dashboard/BottomNavigation.dart';
import 'package:fitness_tracker/Screens/Dashboard/trying.dart';
import 'package:fitness_tracker/Screens/Signup_and_Login/GetUserInfo.dart';
import 'package:fitness_tracker/Screens/Signup_and_Login/Register.dart';
import 'package:fitness_tracker/Widgets/CustomButton.dart';
import 'package:fitness_tracker/Widgets/CustomTextField.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 50, right: 15, left: 15),
        child: Column(children: [
          // Text(
          //   "Hey there,",
          //   style: TextStyle(fontFamily: 'Poppins', fontSize: 16),
          // ),
          // Text(
          //   "Welcome Back",
          //   style: TextStyle(
          //       fontFamily: 'Poppins',
          //       fontSize: 20,
          //       fontWeight: FontWeight.bold),
          // ),
          SizedBox(
            height: 15,
          ),
          customTextField(
              hintText: "Email",
              icon: 'assets/Icons/email_logo.png',
              isPassword: false),
          customTextField(
              hintText: "Password",
              icon: 'assets/Icons/lock_logo.png',
              isPassword: true),
          SizedBox(
            height: 250,
          ),
          customButton(
            text: "Login",
            height: 60.0,
            width: 315.0,
            onClick: bottomNavigation(),
            // onClick: tryBottonm(),
          ),
          //Suggest me a widget to create a horizontal line in flutter?
          SizedBox(
            height: 24,
          ),

          Container(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Row(
              children: [
                Divider(
                  indent: 125,

                  color: Colors.black, // Specify the color of the line
                  height: 1, // Specify the height of the line
                  thickness: 1, // Specify the thickness of the line
                ),
                Text(
                  "Or",
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 12),
                ),
                Divider(
                  height: 1,
                  color: Colors.black,
                  thickness: 1,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset('assets/Icons/google_logo.png'),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                child: Image.asset('assets/Icons/fB_logo.png'),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Don’t have an account yet?",
              style: TextStyle(fontFamily: 'Poppins', fontSize: 12),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => registerScreen()));
                },
                child: Text(
                  "Register",
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 12),
                ))
          ]),
        ]),
      ),
    ));
  }
}
