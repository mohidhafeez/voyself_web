import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:voyself_web/constants/colors.dart';
import 'package:voyself_web/view/widgets/custom_button.dart';
import 'package:voyself_web/view/widgets/location_tile.dart';

class ListingTile extends StatelessWidget {
  final String image;
  final String locationName;
  final String locationCity;
  final double rating;
  final int price;
  ListingTile(
      {super.key,
      required this.image,
      required this.locationName,
      required this.locationCity,
      required this.rating,
      required this.price});

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
                            itemBuilder: (context, index) => Icon(
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
                        "\$ ${price}",
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
                custom_button(
                    h: h,
                    w: w,
                    buttonColor: AppColors.primaryColor,
                    onTap: () {},
                    text: "Edit"),
                SizedBox(
                  width: w * 1,
                ),
                custom_button(
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
