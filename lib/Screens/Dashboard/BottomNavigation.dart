// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:fitness_tracker/Screens/HomeScreen/HmeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:awesome_bottom_bar/widgets/inspired/convex_shape.dart';

class bottomNavigation extends StatefulWidget {
  const bottomNavigation({super.key});

  @override
  State<bottomNavigation> createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () => {},
        backgroundColor: Color.fromRGBO(0, 0, 253, 1),
        child: SvgPicture.asset('assets/Icons/search_icon.svg'),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: ConvexNotchedRectangle(
          notchSmoothness: NotchSmoothness.smoothEdge,
        ),
        // color: Colors.white,
        // elevation: 10,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          GestureDetector(
            onDoubleTap: () {
              
            },
              child: SvgPicture.asset('assets/Icons/home_icon.svg')),
          SvgPicture.asset('assets/Icons/activity_icon.svg'),
          SvgPicture.asset('assets/Icons/camera_icon.svg'),
          SvgPicture.asset('assets/Icons/user_profile.svg'),
        ]),
      ),
    );
  }
}
