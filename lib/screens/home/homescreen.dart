import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height,
            width: size.width * 20 / 100,
            color: Color.fromRGBO(54, 43, 46, 1),
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
