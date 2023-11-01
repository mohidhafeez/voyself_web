import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LocationTile extends StatelessWidget {
  String image;
  String locationName;
  String countryName;
  LocationTile(
      {super.key,
      required this.countryName,
      required this.image,
      required this.locationName});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    return Container(
        height: h * 20,
        width: w * 80,
        color: Colors.amber,
        child: Row(
          children: [
            Container(
              height: h * 19,
              width: w * 9.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
            Column(children: [
              Text("Location Name"),
              Text(locationName),
            ]),
            Column(
              children: [
                Text("Country"),
                Text(countryName),
              ],
            )
          ],
        ));
  }
}
