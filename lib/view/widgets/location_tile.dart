import 'package:flutter/material.dart';
import 'package:voyself_web/constants/colors.dart';
import 'package:voyself_web/view/widgets/rounder_button.dart';

class LocationCustomTile extends StatelessWidget {
  String image;
  String locationName;
  String countryName;
  LocationCustomTile(
      {super.key,
      required this.countryName,
      required this.image,
      required this.locationName});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: w * 2,
        ),
        height: h * 20,
        width: w * 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: h * 19,
                  width: w * 9.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: w * 6,
                ),
                ColumnContainer(firstText: "Name", secText: locationName)
              ],
            ),
            Row(
              children: [
                ColumnContainer(firstText: "Country", secText: countryName),
                SizedBox(
                  width: w * 5,
                ),
                RounderRectangleButton(
                    h: h,
                    w: w,
                    buttonColor: AppColors.primaryColor,
                    onTap: () {},
                    text: "Edit"),
                SizedBox(
                  width: w * 1,
                ),
                RounderRectangleButton(
                    h: h,
                    w: w,
                    buttonColor: Colors.red,
                    onTap: () {},
                    text: "Delete"),
              ],
            ),
          ],
        ));
  }
}

//Column tile
class ColumnContainer extends StatelessWidget {
  final String firstText;
  final String secText;
  const ColumnContainer(
      {super.key, required this.firstText, required this.secText});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            firstText,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          SizedBox(
            height: h * 2,
          ),
          SizedBox(
            width: w * 10,
            child: Text(
              secText,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
        ]);
  }
}
