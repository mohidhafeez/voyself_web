import 'package:flutter/material.dart';
import 'package:voyself_web/constants/colors.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    return Container(
        height: h * 10,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Dashboard",
                style: TextStyle(fontSize: h * 3),
              ),
              Row(
                children: [
                  SizedBox(
                    height: h * 5,
                    width: w * 20,
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                          hintText: "Search Here....",
                          filled: true,
                          fillColor: AppColors.primaryColor,
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black))),
                    ),
                  ),
                  SizedBox(
                    width: w * 2,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/16690873/pexels-photo-16690873/free-photo-of-model-in-a-white-blouse-and-a-black-mini-skirt.jpeg"),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
