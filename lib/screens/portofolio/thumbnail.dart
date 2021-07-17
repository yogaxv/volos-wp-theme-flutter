import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Thumbnail extends StatefulWidget {
  final String title;
  Thumbnail({Key? key, required this.title}) : super(key: key);

  @override
  _ThumbnailState createState() => _ThumbnailState();
}

class _ThumbnailState extends State<Thumbnail> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: MouseRegion(
            onEnter: (ev) {
              setState(() {
                show = true;
              });
            },
            onExit: (ev) {
              setState(() {
                show = false;
              });
            },
            child: Stack(
              children: <Widget>[
                Container(
                  color: Colors.blue,
                  height: 380,
                  width: 380,
                ),
                AnimatedPositioned(
                  duration: Duration(milliseconds: 200),
                  top: 0,
                  bottom: 0,
                  left: show ? 0 : -380,
                  child: Container(
                    width: 380,
                    color: Colors.yellow[800],
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Text(
                            widget.title,
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                              fontSize: 40,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            )),
                          ),
                        )),
                  ),
                ),
              ],
            )));
  }
}
