import 'package:flutter/material.dart';
import 'package:voyself_web/constants/colors.dart';
import 'package:voyself_web/model/model.dart';
import 'package:voyself_web/view/widgets/topbar.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    return Scaffold(
      backgroundColor: AppColors.blackLight,
      body: Column(
        children: [
          TopBarWidget(
            title: "Dashboard",
          ),
          SizedBox(
            height: h * 10,
          ),
          Container(
            height: h * 13,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tileDetails.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                        width: w * 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.primaryColor),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              tileDetails[index].text,
                              style: TextStyle(fontSize: h * 2.5),
                            ),
                            Text(
                              tileDetails[index].value.toString(),
                              style: TextStyle(
                                  fontSize: h * 2.8,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        )),
                  );
                }),
          )
        ],
      ),
    );
  }
}
