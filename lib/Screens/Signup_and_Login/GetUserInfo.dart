// ignore_for_file: prefer_const_constructors

import 'package:fitness_tracker/Screens/Signup_and_Login/Goal.dart';
import 'package:fitness_tracker/Screens/Signup_and_Login/Register.dart';
import 'package:fitness_tracker/Widgets/CustomButton.dart';
import 'package:fitness_tracker/Widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class getInfoScreen extends StatefulWidget {
  const getInfoScreen({super.key});

  @override
  State<getInfoScreen> createState() => _getInfoScreenState();
}

class _getInfoScreenState extends State<getInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // color: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
                height: 250,
                child: SvgPicture.asset('assets/Vectors/girl_vector.svg')),
            Text(
              "Let's complete your profile",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "It will help us to know more about you!",
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 10,
                  color: Color.fromRGBO(0,0,0, 1)),
            ),
            SizedBox(
              height: 20,
            ),
            customTextField(
                hintText: "Choose Gender",
                icon: 'assets/Icons/2_user_icon.png',
                isPassword: false),
            customTextField(
                hintText: "Date of Birth",
                icon: 'assets/Icons/Calendar_icon.png',
                isPassword: false),
            customTextField(
                hintText: "Your Weight",
                icon: 'assets/Icons/scale_icon.png',
                isPassword: false),
            customTextField(
                hintText: "Your Height",
                icon: 'assets/Icons/Swap_icon.png',
                isPassword: false),
            SizedBox(
              height: 20,
            ),
            customButton(
                text: "Next", height: 60.0, width: 315.0, onClick: goalScreen())
          ]),
        ),
      ),
    );
  }
}
