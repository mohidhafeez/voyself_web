import 'package:flutter/material.dart';
import 'package:voyself_web/constants/colors.dart';
import 'package:voyself_web/view/widgets/location_tile.dart';
import 'package:voyself_web/view/widgets/topbar.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    return Scaffold(
      backgroundColor: AppColors.blackLight,
      body: Column(
        children: [
          TopBarWidget(),
          SizedBox(
            height: h * 3,
          ),
          LocationTile(
              countryName: "Pakstian",
              image: "assets/images/tajMehal.jpg",
              locationName: "darbar")
        ],
      ),
    );
  }
}
