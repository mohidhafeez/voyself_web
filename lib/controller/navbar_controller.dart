import 'package:get/get.dart';
import 'package:voyself_web/view/pages/navbar/screens/approval_screen.dart';
import 'package:voyself_web/view/pages/navbar/screens/booking_screen.dart';
import 'package:voyself_web/view/pages/navbar/screens/dashboard_screen.dart';
import 'package:voyself_web/view/pages/navbar/screens/location_screen.dart';
import 'package:voyself_web/view/pages/navbar/screens/listing_screen.dart';
import 'package:voyself_web/view/pages/navbar/screens/notification_screen.dart';

class NavBarController extends GetxController {
  RxInt index = 0.obs;

  var pages = [
    DashboardScreen(),
    LocationScreen(),
    ListingScreen(),
    ApprovalScreen(),
    BookingScreen(),
    NotificationScreen(),
  ];
}
