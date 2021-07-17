import 'package:flutter/material.dart';
import 'package:volos_wp_theme_dart/screens/portofolio/thumbnail.dart';

class PortfolioScreen extends StatelessWidget {
  final Size size;
  const PortfolioScreen({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: double.infinity,
      color: Color.fromRGBO(48, 43, 41, 1),
      padding: EdgeInsets.fromLTRB(120, 68, 120, 68),
      // child: Thumbnail(title: "Mobile"),
      // child: GridView.count(
      //   // Create a grid with 2 columns. If you change the scrollDirection to
      //   // horizontal, this produces 2 rows.
      //   crossAxisCount: 3,
      //   mainAxisSpacing: 60.0,
      //   crossAxisSpacing: 60.0,
      //   shrinkWrap: true,
      //   childAspectRatio: 1,
      //   // Generate 100 widgets that display their index in the List.
      //   children: List.generate(6, (index) {
      //     return Thumbnail(title: "Mobile");
      //   }),
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Thumbnail(title: "Mobile"),
              Thumbnail(title: "Mobile"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Thumbnail(title: "Mobile"),
              Thumbnail(title: "Mobile"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Thumbnail(title: "Mobile"),
              Thumbnail(title: "Mobile"),
            ],
          )
        ],
      ),
    );
  }
}
