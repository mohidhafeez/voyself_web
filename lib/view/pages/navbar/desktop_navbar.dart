import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                  color: Colors.white,
                  child: Obx(
                    () => ListView(
                      children: [
                        ListTile(
                          title: Text("HOME"),
                          onTap: () => navBarController.index.value = 0,
                          selected: navBarController.index.value == 0,
                        ),
                        ListTile(
                          title: Text("one"),
                          onTap: () => navBarController.index.value = 1,
                          selected: navBarController.index.value == 1,
                        ),
                        ListTile(
                          title: Text("two"),
                          onTap: () => navBarController.index.value = 2,
                          selected: navBarController.index.value == 2,
                        ),
                      ],
                    ),
                  ))),
          Expanded(
              flex: 8,
              child: Obx(
                  () => navBarController.pages[navBarController.index.value])),
        ],
      ),
    );
  }
}
