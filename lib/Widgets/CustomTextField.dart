import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  const customTextField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.isPassword,
  });

  final String hintText;
  final String icon;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        obscureText: isPassword,
        decoration: !isPassword
            ? InputDecoration(
                contentPadding: EdgeInsets.all(15),
                fillColor: Color.fromRGBO(255, 255, 255, 1),
                filled: true,
                hintText: hintText,
                hintStyle: TextStyle(fontFamily: 'Poppins', fontSize: 12),
                alignLabelWithHint: true,
                // floatingLabelAlignment: FloatingLabelAlignment.center,
                prefixIcon: Container(
                  width: 15.5,
                  height: 15,
                  child: Image.asset(
                    icon,
                  ),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)),
              )
            : InputDecoration(
                contentPadding: EdgeInsets.all(15),

                fillColor: Color(0xFFF7F8F8),
                filled: true,
                hintText: hintText,

                hintStyle: TextStyle(fontFamily: 'Poppins', fontSize: 12),
                alignLabelWithHint: true,
                // floatingLabelAlignment: FloatingLabelAlignment.center,
                prefixIcon: Container(
                  width: 15.5,
                  height: 15,
                  child: Image.asset(
                    icon,
                  ),
                ),
                suffixIcon: Image.asset('assets/Icons/hide_logo.png'),

                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)),
              ),
      ),
    );
  }
}
