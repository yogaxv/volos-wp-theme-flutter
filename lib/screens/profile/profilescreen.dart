import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  final Size size;
  const ProfileScreen({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _leftsidewidth = size.width * 30 / 100;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(75, 225, 75, 225),
            height: size.height,
            width: _leftsidewidth,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello. My Name is",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontSize: 30,
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ))),
                Text("Yoga Prasetiyo",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontSize: 100,
                      decoration: TextDecoration.none,
                      color: Colors.yellow[800],
                      fontWeight: FontWeight.w800,
                    ))),
                Text(
                    "A Full Stack Developer with industry experience building websites , web applications, mobile applications, and desktop applications. I specialize in Laravel and have professional experience working with Python, C# and Flutter.",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 19,
                            decoration: TextDecoration.none,
                            color: Colors.black54,
                            fontWeight: FontWeight.w400,
                            height: 1.5))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("LINKEDIN",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 12,
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 3.0))),
                    Text("TWITTER",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 12,
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 3.0))),
                    Text("GITHUB",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 12,
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 3.0))),
                    Text("GITLAB",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 12,
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 3.0))),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: size.height,
              color: Colors.yellow,
            ),
          )
        ],
      ),
    );
  }
}
