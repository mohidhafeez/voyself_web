import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:voyself_web/constants/colors.dart';
import 'package:voyself_web/constants/icons.dart';
import 'package:voyself_web/view/widgets/circle_button.dart';
import 'package:voyself_web/view/widgets/rounder_button.dart';
import 'package:voyself_web/view/widgets/custom_dialoguebox.dart';

class ListingTile extends StatelessWidget {
  final String image;
  final String locationName;
  final String locationCity;
  final double rating;
  final int price;
  VoidCallback onTap;
  ListingTile(
      {super.key,
      required this.onTap,
      required this.image,
      required this.locationName,
      required this.locationCity,
      required this.rating,
      required this.price});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    return InkWell(
      onTap: onTap,
      child: Container(
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
                    width: w * 3,
                  ),
                  //details
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: h * 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          locationName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: h * 3.5,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          locationCity,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: h * 2.5,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Text(
                              rating.toStringAsFixed(1),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: h * 2.5,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: w * 0.5,
                            ),
                            RatingBarIndicator(
                              rating: rating,
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 5,
                              itemSize: h * 2,
                              direction: Axis.horizontal,
                            ),
                          ],
                        ),
                        Text(
                          "\$ $price",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: h * 2.5,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  CustomCircleButton(
                      onTap: () {},
                      bgColor: AppColors.liteGreen,
                      borderColor: AppColors.darkGreen,
                      icon: AppIcons.approve),
                  SizedBox(
                    width: w * 0.8,
                  ),
                  CustomCircleButton(
                      onTap: () {},
                      bgColor: AppColors.liteRed,
                      borderColor: AppColors.darkRed,
                      icon: AppIcons.disapprove),
                  SizedBox(
                    width: w * 1,
                  ),
                  CustomCircleButton(
                      onTap: () {},
                      bgColor: AppColors.liteYellow,
                      borderColor: AppColors.darkYellow,
                      icon: AppIcons.edit),
                  SizedBox(
                    width: w * 1,
                  ),
                  CustomCircleButton(
                      onTap: () {},
                      bgColor: AppColors.liteBlue,
                      borderColor: AppColors.darkBlue,
                      icon: AppIcons.delete),
                ],
              ),
            ],
          )),
    );
  }
}
