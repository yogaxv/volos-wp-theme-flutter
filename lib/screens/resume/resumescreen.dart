import 'package:flutter/material.dart';
import 'package:volos_wp_theme_dart/screens/resume/cover_letter_widget.dart';
import 'package:volos_wp_theme_dart/screens/resume/experience_widget.dart';

class ResumeScreen extends StatelessWidget {
  final Size size;
  const ResumeScreen({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: double.infinity,
      color: Color.fromRGBO(48, 43, 41, 1),
      padding: EdgeInsets.fromLTRB(120, 68, 120, 68),
      child: Row(
        children: [
          ExperienceWidget(size: size),
          Expanded(child: CoverLetterWidget(size: size)),
        ],
      ),
    );
  }
}
