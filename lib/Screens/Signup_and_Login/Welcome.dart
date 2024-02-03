// ignore_for_file: prefer_const_constructors

import 'package:fitness_tracker/Screens/Dashboard/BottomNavigation.dart';
import 'package:fitness_tracker/Widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(children: [
          SvgPicture.asset('assets/Vectors/man_women_vector.svg'),
          SizedBox(
            height: 40,
          ),
          Text("Welcome, Yash",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(0, 0, 0, 1))),
          Text("You are all set now, let’s reach your goals together with us",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 10,
                  color: Color.fromRGBO(0, 0, 0, 1))),
          SizedBox(
            height: 225,
          ),
          customButton(
              text: "Go To Home",
              height: 60.0,
              width: 315.0,
              onClick: bottomNavigation())
        ]),
      ),
    );
  }
}
