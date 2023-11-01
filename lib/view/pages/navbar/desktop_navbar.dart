import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voyself_web/constants/colors.dart';
import 'package:voyself_web/controller/navbar_controller.dart';

class DesktopNavBar extends StatelessWidget {
  DesktopNavBar({super.key});

  List<String> NavBarTabs = [
    "Dashboard",
    "Location",
    "Listing",
    "Approval",
    "Bookings",
    "Notifications"
  ];
  @override
  Widget build(BuildContext context) {
    NavBarController navBarController = Get.put(NavBarController());
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
                color: AppColors.black,
                child: Column(children: [
                  Container(
                    height: h * 10,
                    width: double.infinity,
                    color: AppColors.primaryColor,
                    child: Center(
                        child: Text(
                      "VOYSLEF",
                      style: TextStyle(
                          fontSize: h * 4, fontWeight: FontWeight.w600),
                    )),
                  ),
                  Expanded(
                    child: Container(
                      child: ListView.builder(
                          itemCount: NavBarTabs.length,
                          itemBuilder: (context, index) {
                            return Obx(() => ListTile(
                                  title: Text(
                                    NavBarTabs[index],
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: navBarController.index.value ==
                                                index
                                            ? AppColors.primaryColor
                                            : Colors.white),
                                  ),
                                  onTap: () {
                                    navBarController.index.value = index;
                                    print(index);
                                  },
                                ));
                          }),
                    ),
                  ),
                ])),
          ),
          Expanded(
              flex: 8,
              child: Obx(
                  () => navBarController.pages[navBarController.index.value])),
        ],
      ),
    );
  }
}
