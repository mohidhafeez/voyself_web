import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:voyself_web/constants/colors.dart';
import 'package:voyself_web/model/model.dart';
import 'package:voyself_web/view/widgets/topbar.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM').format(now);
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    return Scaffold(
      backgroundColor: AppColors.blackLight,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopBarWidget(
            title: "Dashboard",
          ),
          SizedBox(
            height: h * 2,
          ),
          Container(
            height: h * 20,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tileDetails.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: w * 1),
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: w * 1, vertical: 0),
                        width: w * 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.primaryColor),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                tileDetails[index].text,
                                style: TextStyle(fontSize: h * 2.5),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                tileDetails[index].value.toString(),
                                style: TextStyle(
                                    fontSize: h * 6,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        )),
                  );
                }),
          ),
          SizedBox(
            height: h * 3,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Traffic Charts",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: h * 4,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Text(
                      formattedDate,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * 4,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: w * 1,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.calendar,
                          color: Colors.white,
                        ))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: h * 2,
          ),
          Row(
            children: [
              Container(
                height: h * 55,
                width: w * 38,
                child: SfCartesianChart(
                  title: ChartTitle(
                    text: "Users",
                    textStyle: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: h * 3,
                        fontWeight: FontWeight.w600),
                  ),
                  series: [
                    LineSeries(
                        width: 4,
                        dataSource: userDetails,
                        xValueMapper: (UsersData activeUsers, _) =>
                            activeUsers.days,
                        yValueMapper: (UsersData activeUsers, _) =>
                            activeUsers.activeUser),
                    LineSeries(
                        width: 3,
                        dataSource: userDetails,
                        xValueMapper: (UsersData nonActiveUsers, _) =>
                            nonActiveUsers.days,
                        yValueMapper: (UsersData nonActiveUsers, _) =>
                            nonActiveUsers.nonActiveUser),
                  ],
                ),
              ),
              SizedBox(
                width: w * 3,
              ),
              Container(
                height: h * 55,
                width: w * 38,
                child: SfCartesianChart(
                  title: ChartTitle(
                    text: "Places",
                    textStyle: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: h * 3,
                        fontWeight: FontWeight.w600),
                  ),
                  series: [
                    LineSeries(
                        color: Colors.red,
                        width: 4,
                        dataSource: placesDetails,
                        xValueMapper: (Places currentPlaces, _) =>
                            currentPlaces.days,
                        yValueMapper: (Places currentPlaces, _) =>
                            currentPlaces.currentPlaces),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
