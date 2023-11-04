import 'package:flutter/material.dart';

class custom_button extends StatelessWidget {
  final Color buttonColor;
  VoidCallback onTap;
  final String text;
  custom_button({
    super.key,
    required this.text,
    required this.onTap,
    required this.buttonColor,
    required this.h,
    required this.w,
  });

  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w * 10,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 15,
            color: Colors.black.withOpacity(0.5),
            offset: Offset(2, 2),
            spreadRadius: 1)
      ]),
      child: MaterialButton(
        height: h * 7,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: buttonColor,
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(
              fontSize: h * 2,
              fontWeight: FontWeight.w500,
              color: Colors.white),
        ),
      ),
    );
  }
}
