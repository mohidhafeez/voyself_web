import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:voyself_web/constants/colors.dart';
import 'package:voyself_web/model/model.dart';
import 'package:voyself_web/view/widgets/topbar.dart';

class BookingScreen extends StatelessWidget {
  BookingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    return Scaffold(
      backgroundColor: AppColors.blackLight,
      body: Column(
        children: [
          TopBarWidget(title: "Bookings"),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 1, vertical: h * 2),
            child: Table(
              children: [
                TableRow(children: [
                  Center(
                    child: TableCell(
                        child: Text(
                      "Booking ID",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * 2.7,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  Center(
                    child: TableCell(
                        child: Text(
                      "Client Name",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * 2.7,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  Center(
                    child: TableCell(
                        child: Text(
                      "Booking For",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * 2.7,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  Center(
                    child: TableCell(
                        child: Text(
                      "Guests",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * 2.7,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  Center(
                    child: TableCell(
                        child: Text(
                      "Check-in",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * 2.7,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  Center(
                    child: TableCell(
                        child: Text(
                      "Check-out",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * 2.7,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  Center(
                    child: TableCell(
                        child: Text(
                      "Payment",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * 2.7,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  Center(
                    child: TableCell(
                        child: Text(
                      "Status",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * 2.7,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  Center(
                    child: TableCell(
                        child: Text(
                      "Date",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * 2.7,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ]),
              ],
            ),
          ),
          Divider(
            color: AppColors.primaryColor,
            thickness: 3,
            indent: 10,
            endIndent: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: bookingDetails.length,
                itemBuilder: (context, index) {
                  DateTime dateTime = bookingDetails[index]
                      .date; // Replace this with your DateTime object
                  DateTime checkinTime = bookingDetails[index]
                      .checkIn; // Replace this with your DateTime object
                  DateTime checkoutTime = bookingDetails[index]
                      .checkOut; // Replace this with your DateTime object
                  String date = DateFormat('yyyy-MM-dd').format(dateTime);
                  String checkin =
                      DateFormat('yyyy-MM-dd HH:mm a').format(checkinTime);
                  String checkout =
                      DateFormat('yyyy-MM-dd HH:mm a').format(checkoutTime);
                  return Column(
                    children: [
                      SizedBox(
                        height: h * 1,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: w * 1),
                        child: Table(
                          children: [
                            TableRow(children: [
                              Center(
                                child: TableCell(
                                    child: Text(
                                  bookingDetails[index].bookingID.toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: h * 2.5),
                                )),
                              ),
                              Center(
                                child: TableCell(
                                    child: Text(
                                        bookingDetails[index].clientName,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: h * 2.5))),
                              ),
                              Center(
                                child: TableCell(
                                    child: Text(
                                  bookingDetails[index].bookingPlace,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: h * 2.5),
                                )),
                              ),
                              Center(
                                child: TableCell(
                                    child: Text(
                                  bookingDetails[index].guest,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: h * 2.5),
                                )),
                              ),
                              Center(
                                child: TableCell(
                                    child: Text(
                                  checkin,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: h * 2.5),
                                )),
                              ),
                              Center(
                                child: TableCell(
                                    child: Text(
                                  checkout,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: h * 2.5),
                                )),
                              ),
                              Center(
                                child: TableCell(
                                    child: Text(
                                  bookingDetails[index].payment,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: h * 2.7),
                                )),
                              ),
                              Center(
                                child: TableCell(
                                    child: Text(
                                  bookingDetails[index].status
                                      ? "Approved"
                                      : "Pending",
                                  style: TextStyle(
                                      color: bookingDetails[index].status
                                          ? const Color.fromARGB(
                                              255, 119, 209, 122)
                                          : Colors.yellow,
                                      fontSize: h * 2.5,
                                      fontWeight: FontWeight.w600),
                                )),
                              ),
                              Center(
                                child: TableCell(
                                    child: Text(
                                  date,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: h * 2.5),
                                )),
                              ),
                            ])
                          ],
                        ),
                      ),
                      Divider(
                        color: AppColors.primaryColor,
                        indent: 25,
                        endIndent: 25,
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
