import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:voyself_web/constants/colors.dart';
import 'package:voyself_web/model/model.dart';
import 'package:voyself_web/view/widgets/topbar.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({
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
          const TopBarWidget(title: "Bookings"),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 1, vertical: h * 2),
            child: Table(
              children: [
                TableRow(children: [
                  TableCell(
                      child: Center(
                    child: Text(
                      "Booking ID",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * 2.7,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
                  TableCell(
                      child: Center(
                    child: Text(
                      "Client Name",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * 2.7,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
                  TableCell(
                      child: Center(
                    child: Text(
                      "Booking For",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * 2.7,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
                  TableCell(
                      child: Center(
                    child: Text(
                      "Guests",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * 2.7,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
                  TableCell(
                      child: Text(
                    "Check-in",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: h * 2.7,
                        fontWeight: FontWeight.w600),
                  )),
                  TableCell(
                      child: Text(
                    "Check-out",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: h * 2.7,
                        fontWeight: FontWeight.w600),
                  )),
                  TableCell(
                      child: Center(
                    child: Text(
                      "Payment",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * 2.7,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
                  TableCell(
                      child: Center(
                    child: Text(
                      "Status",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * 2.7,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
                  TableCell(
                      child: Center(
                    child: Text(
                      "Date",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * 2.7,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
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
                          // defaultVerticalAlignment:
                          // TableCellVerticalAlignment.middle,
                          children: [
                            TableRow(children: [
                              TableCell(
                                  child: Center(
                                child: Text(
                                  bookingDetails[index].bookingID.toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: h * 2.5),
                                ),
                              )),
                              TableCell(
                                  child: Center(
                                child: Text(bookingDetails[index].clientName,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: h * 2.5)),
                              )),
                              TableCell(
                                  child: Center(
                                child: Text(
                                  bookingDetails[index].bookingPlace,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: h * 2.5),
                                ),
                              )),
                              TableCell(
                                  child: Center(
                                child: Text(
                                  bookingDetails[index].guest,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: h * 2.5),
                                ),
                              )),
                              TableCell(
                                  child: Center(
                                child: Text(
                                  checkin,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: h * 2.5),
                                ),
                              )),
                              TableCell(
                                  child: Center(
                                child: Text(
                                  checkout,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: h * 2.5),
                                ),
                              )),
                              TableCell(
                                  child: Center(
                                child: Text(
                                  bookingDetails[index].payment,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: h * 2.7),
                                ),
                              )),
                              TableCell(
                                  child: Center(
                                child: Container(
                                  height: h * 7,
                                  width: w * 8,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                        color: bookingDetails[index].status
                                            ? const Color.fromARGB(
                                                255, 0, 113, 4)
                                            : const Color.fromARGB(
                                                255, 255, 124, 16),
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                      color: bookingDetails[index].status
                                          ? const Color.fromARGB(
                                              255, 165, 216, 167)
                                          : const Color.fromARGB(
                                              255, 255, 242, 129)),
                                  child: Center(
                                    child: Text(
                                      bookingDetails[index].status
                                          ? "Approved"
                                          : "Pending",
                                      style: TextStyle(
                                          color: bookingDetails[index].status
                                              ? const Color.fromARGB(
                                                  255, 0, 113, 4)
                                              : const Color.fromARGB(
                                                  255, 255, 124, 16),
                                          fontSize: h * 2.5,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              )),
                              TableCell(
                                  child: Center(
                                child: Text(
                                  date,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: h * 2.5),
                                ),
                              )),
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
