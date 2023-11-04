import 'package:flutter/material.dart';
import 'package:voyself_web/constants/colors.dart';
import 'package:voyself_web/model/model.dart';
import 'package:voyself_web/view/widgets/listing_tile.dart';
import 'package:voyself_web/view/widgets/topbar.dart';

class ListingScreen extends StatelessWidget {
  const ListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    return Scaffold(
      backgroundColor: AppColors.blackLight,
      body: Column(
        children: [
          TopBarWidget(title: "Listing"),
          Expanded(
            child: ListView.builder(
              itemCount: listingDetails.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(height: h * 2),
                    ListingTile(
                        image: listingDetails[index].image,
                        locationName: listingDetails[index].locationName,
                        locationCity: listingDetails[index].locationCity,
                        rating: listingDetails[index].rating,
                        price: listingDetails[index].price)
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
