import 'package:flutter/material.dart';
import 'package:volos_wp_theme_dart/screens/nav/infoscreen.dart';
import 'package:volos_wp_theme_dart/screens/profile/profilescreen.dart';
import 'package:volos_wp_theme_dart/screens/services/servicesscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScrollController controller = ScrollController();

    return Container(
      width: size.width,
      height: size.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoScreen(size: size),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProfileScreen(size: size),
                  ServicesScreen(size: size)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
