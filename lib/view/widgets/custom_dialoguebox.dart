import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:voyself_web/constants/colors.dart';
import 'package:voyself_web/model/model.dart';

class CustomDialogueBox extends StatelessWidget {
  final Listing data;
  const CustomDialogueBox({
    required this.data,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    return Container(
      color: AppColors.blackLight,
      height: h * 100,
      width: w * 100,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: h * 1.0, horizontal: w * 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: h * 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Details",
                      style: TextStyle(fontSize: h * 4, color: Colors.white),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          size: h * 4,
                          Icons.close,
                          color: Colors.white,
                        ))
                  ],
                )),
            Divider(color: AppColors.primaryColor, thickness: 3),
            //main
            SizedBox(
              height: h * 2,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    data.image,
                    height: h * 40,
                    width: w * 20,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 3),
                  child: SizedBox(
                    height: h * 35,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          data.locationName,
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: h * 6,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          data.locationCity,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: h * 4,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Budget:",
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: h * 2,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "\$${data.min}-\$${data.max}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: h * 3,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Reviews:",
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: h * 2,
                              fontWeight: FontWeight.w400),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              data.rating.toStringAsFixed(1),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: h * 3,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: w * 1,
                            ),
                            RatingBarIndicator(
                              rating: data.rating,
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 5,
                              itemSize: h * 4,
                              direction: Axis.horizontal,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: h * 2,
            ),
            SizedBox(
              // color: Colors.green,
              height: h * 40,
              width: w * 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discription",
                    style: TextStyle(
                        fontSize: h * 3,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    data.discription,
                    style: TextStyle(color: Colors.white, fontSize: h * 2),
                  ),
                  Text(
                    "Features",
                    style: TextStyle(
                        fontSize: h * 3,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: h * 5,
                    // color: Colors.amber,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.features.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: w * 1),
                          child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColors.primaryColor),
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: w * 3,
                              ),
                              child: Center(
                                  child: Text(
                                data.features[index],
                                style: TextStyle(
                                    fontSize: h * 2,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              )),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Text(
                    "Facilites",
                    style: TextStyle(
                        fontSize: h * 3,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: h * 5,
                    // color: Colors.amber,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.facilites.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: w * 1),
                          child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColors.primaryColor),
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: w * 3,
                              ),
                              child: Center(
                                  child: Text(
                                data.facilites[index],
                                style: TextStyle(
                                    fontSize: h * 2,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              )),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
