import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:voyself_web/constants/icons.dart';

class CustomCircleButton extends StatelessWidget {
  final Color borderColor;
  final String icon;

  final Color bgColor;
  final VoidCallback onTap;
  const CustomCircleButton(
      {super.key,
      required this.borderColor,
      required this.bgColor,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;

    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: h * 7,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 15,
                    color: Colors.black.withOpacity(0.5),
                    offset: Offset(2, 2),
                    spreadRadius: 2)
              ],
              shape: BoxShape.circle,
              border: Border.all(color: borderColor, width: 3),
              color: bgColor),
          child: Padding(
              padding: EdgeInsets.all(h * 1.5),
              child: Image.network(
                icon,
                color: Colors.black,
              ))),
    );
  }
}
