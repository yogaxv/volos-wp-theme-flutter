import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ExperienceWidget extends StatefulWidget {
  final Size size;
  ExperienceWidget({Key? key, required this.size}) : super(key: key);

  @override
  _ExperienceWidgetState createState() => _ExperienceWidgetState();
}

class _ExperienceWidgetState extends State<ExperienceWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: widget.size.width * 40 / 100,
      // color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Experience",
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                fontSize: 30,
                decoration: TextDecoration.none,
                color: Colors.yellow,
                fontWeight: FontWeight.w800,
              ))),
          _timelineTile(0),
          _timelineTile(1),
          _timelineTile(1),
          _timelineTile(1),
          _timelineTile(2),
        ],
      ),
    );
  }

  Widget _timelineTile(int type) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      isFirst: type == 0 ? true : false,
      isLast: type == 2 ? true : false,
      beforeLineStyle: LineStyle(color: Colors.yellow),
      afterLineStyle: LineStyle(color: Colors.yellow),
      indicatorStyle: IndicatorStyle(
        color: Colors.yellow,
      ),
      lineXY: 0.15,
      startChild: Container(
        child: Text("2015",
            style: GoogleFonts.roboto(
                textStyle: TextStyle(
              fontSize: 14,
              decoration: TextDecoration.none,
              color: Colors.yellow[400],
              fontWeight: FontWeight.w800,
            ))),
      ),
      endChild: Container(
        padding: const EdgeInsets.only(left: 60, top: 20, bottom: 20),
        child: Text(
            "2015 - 2017 June 2019 - Current Turpis metus sit diam purus leo in varius ac quam. Nunc amet tristique volutpat adipiscing vulputate phasellus. Eget enim aliquam euismod mauris in vitae viverra blandit lectus diam feugiat. Nunc amet tristique volutpat adipiscing vulputate phasellus. Eget enim aliquam.",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 14,
                    decoration: TextDecoration.none,
                    color: Colors.yellow.withOpacity(0.7),
                    height: 1.5))),
      ),
    );
  }
}
