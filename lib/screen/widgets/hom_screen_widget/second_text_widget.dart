import 'package:best_comapny/constants/color_app.dart';
import 'package:flutter/material.dart';

class SecondTextWidget extends StatelessWidget {
  const SecondTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Affordable Certification",
          style: TextStyle(
            fontSize: 12,
            color: ColorsApp.mainColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Get Your Quality Skills Certificate\nThrough Online Courses",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: ColorsApp.whiteColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Students friendly pricing for the certificate programs helps individuals to get"
          "their skill certificate easier than ever!",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: ColorsApp.whiteColor,
            fontWeight: FontWeight.bold,
            height: 1.5,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton.icon(
          icon: const Icon(Icons.person_2_outlined),
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsApp.mainColor,
          ),
          onPressed: () {},
          label: const Text(
            "Get Started Now",
            style: TextStyle(
              fontSize: 16,
              color: ColorsApp.whiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
