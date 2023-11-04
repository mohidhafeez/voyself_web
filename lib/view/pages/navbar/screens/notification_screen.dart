import 'package:flutter/material.dart';
import 'package:voyself_web/constants/colors.dart';
import 'package:voyself_web/view/widgets/topbar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    return Scaffold(
      backgroundColor: AppColors.blackLight,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TopBarWidget(title: "Notifications"),
          SizedBox(
            child: Column(
              children: [
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Title:",
                          style: TextStyle(
                              fontSize: h * 2,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: h * 2,
                        ),
                        SizedBox(
                            width: w * 70,
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: "Enter Notification Title",
                                  hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColors.primaryColor),
                                      borderRadius: BorderRadius.circular(20)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            )),
                        SizedBox(
                          height: h * 2,
                        ),
                        Text(
                          "Discription:",
                          style: TextStyle(
                              fontSize: h * 2,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: h * 2,
                        ),
                        SizedBox(
                            width: w * 70,
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: "Enter Notification Discription",
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.primaryColor),
                                    borderRadius: BorderRadius.circular(20)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    )),
                              ),
                            )),
                        SizedBox(
                          height: h * 5,
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  width: w * 16,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: 15,
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(2, 2),
                        spreadRadius: 1)
                  ]),
                  child: MaterialButton(
                    height: h * 7,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: AppColors.primaryColor,
                    onPressed: () {},
                    child: Text(
                      "Send",
                      style: TextStyle(
                          fontSize: h * 2.5,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
            width: 10,
          )
        ],
      ),
    );
  }
}
