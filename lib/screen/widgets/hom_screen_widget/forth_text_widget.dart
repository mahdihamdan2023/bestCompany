import 'package:best_comapny/constants/color_app.dart';
import 'package:flutter/material.dart';

class ForthTextWidget extends StatelessWidget {
  const ForthTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(
            "Talent Instructors at your hand",
            style: TextStyle(
              fontSize: 12,
              color: ColorsApp.mainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Top Instructors",
            style: TextStyle(
              fontSize: 18,
              color: ColorsApp.whiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Browse through our diverse selection of instructors and choose the perfect match for your learning goals. Start your learning journey with us and experience satisfaction guaranteed!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: ColorsApp.whiteColor,
              fontWeight: FontWeight.bold,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
