import 'package:flutter/material.dart';
import 'package:flutter_msd_app/utils/SizeConfig.dart';

class ReusableTextField extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool main;
  final bool isLogin;

  ReusableTextField({this.text, this.icon, this.main, this.isLogin = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: isLogin
              ? SizeConfig.screenWidth * 0.03
              : SizeConfig.screenWidth * 0.08,
          vertical: 10),
      padding: main
          ? EdgeInsets.only(left: SizeConfig.screenWidth * 0.1)
          : EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextField(
        cursorColor: Colors.grey[300],
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            color: Colors.grey[300],
            fontSize: 16,
          ),
          border: InputBorder.none,
          prefixIcon: main
              ? Icon(
                  icon,
                  color: Colors.grey[300],
                )
              : null,
          suffixIcon: main
              ? null
              : Icon(
                  icon,
                  color: Colors.grey[300],
                ),
        ),
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
