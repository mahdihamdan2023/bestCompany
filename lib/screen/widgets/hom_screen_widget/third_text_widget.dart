import 'package:best_comapny/constants/color_app.dart';
import 'package:flutter/material.dart';

class ThirdTextWidget extends StatelessWidget {
  const ThirdTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Catch up with the newest",
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
          "Latest Courses",
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
          "Explore all of our courses and pick your suitable ones to enroll and start learning with us! We ensure that you will never regret it!",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: ColorsApp.whiteColor,
            fontWeight: FontWeight.bold,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
