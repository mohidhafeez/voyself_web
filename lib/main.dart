import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:voyself_web/view/pages/navbar/navbar.dart';
import 'package:voyself_web/view/pages/navbar/screens/listing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Voyself',
      home: const NavbarScreen(),
      theme: ThemeData(fontFamily: 'Poppins'),
    );
  }
}
