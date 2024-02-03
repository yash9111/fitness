import 'package:fitness_tracker/Screens/Signup_and_Login/GetUserInfo.dart';
import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  var text;

  var width;

  var height;
  var onClick;

  customButton({
    super.key,
    required this.text,
    required this.height,
    required this.width,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromRGBO(0,0,0, 1))),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => onClick,
                ));
          },
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
