import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoScreen extends StatelessWidget {
  final Size size;

  const InfoScreen({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _widthNav = size.width * 20 / 100;
    return Container(
      height: size.height,
      width: _widthNav,
      color: Color.fromRGBO(54, 43, 46, 1),
      padding: EdgeInsets.all(75),
      child: ListView(
        children: [
          profileInfo("NAME", "Yoga Prasetiyo"),
          profileInfo("ROLE", "Fullstack Developer"),
          profileInfo("EMAIL", "yoga.xv@gmail.com"),
          profileInfo("PHONE", "(+62) 8787 2240 337"),
        ],
      ),
    );
  }
}

Widget profileInfo(title, value) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        child: Text(title,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontSize: 12,
              decoration: TextDecoration.none,
              color: Colors.yellow,
              letterSpacing: 8.0,
              fontWeight: FontWeight.w300,
            ))),
      ),
      Container(
        padding: EdgeInsets.only(left: 3.0, bottom: 30),
        child: Text(value,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontSize: 15,
              decoration: TextDecoration.none,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ))),
      ),
    ],
  );
}
