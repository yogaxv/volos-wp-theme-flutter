import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesScreen extends StatelessWidget {
  final Size size;
  const ServicesScreen({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: double.infinity,
      color: Color.fromRGBO(48, 43, 41, 1),
      padding: EdgeInsets.all(75),
      child: Row(
        children: [
          Column(
            children: [
              _boxService(),
              _boxService(),
            ],
          ),
          Column(
            children: [
              _boxService(),
              _boxService(),
            ],
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Design",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontSize: 40,
                      decoration: TextDecoration.none,
                      color: Colors.yellow[400],
                      fontWeight: FontWeight.w800,
                    ))),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra tristique placerat in massa consectetur quisque nunc fames.",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 25,
                            decoration: TextDecoration.none,
                            color: Colors.yellow[50],
                            fontWeight: FontWeight.w400,
                            height: 1.5))),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra tristique placerat in massa consectetur quisque. Nunc ac fames lectus in libero aliquet.",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 18,
                            decoration: TextDecoration.none,
                            color: Colors.white24,
                            fontWeight: FontWeight.w400,
                            height: 1.5))),
                Text(
                    "Faucibus sed tristique fames sed aliquet ultricies eget viverra arcu. Vitae faucibus diam consequat maecenas. Turpis metus sit diam purus leo in varius ac quam. Nunc amet tristique volutpat adipiscing vulputate phasellus. Volutpat faucibus",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 18,
                            decoration: TextDecoration.none,
                            color: Colors.white24,
                            fontWeight: FontWeight.w400,
                            height: 1.5))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _button("Download CV"),
                    _button("Check My Portfolio"),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget _button(title) {
    return Container(
        width: 200,
        height: 50,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            side: BorderSide(width: 1, color: Colors.yellow),
          ),
          onPressed: () {},
          child: Text(title,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.none,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ))),
        ));
  }

  Widget _boxService() {
    return Container(
      color: Color.fromRGBO(54, 43, 46, 1),
      width: 350,
      height: 350,
      padding: EdgeInsets.all(50),
      margin: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Design",
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                fontSize: 40,
                decoration: TextDecoration.none,
                color: Colors.yellow[400],
                fontWeight: FontWeight.w800,
              ))),
          Text(
              "A full stack allaround designer that may or may not include a guide for specific creative people",
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      fontSize: 17,
                      decoration: TextDecoration.none,
                      color: Colors.yellow[50],
                      fontWeight: FontWeight.w400,
                      height: 1.5))),
        ],
      ),
    );
  }
}
