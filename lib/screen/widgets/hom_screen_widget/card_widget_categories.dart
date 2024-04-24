import 'package:best_comapny/constants/color_app.dart';
import 'package:flutter/material.dart';

class CardWidgetCategories extends StatelessWidget {
  final String image;
  final String title;

  const CardWidgetCategories(
      {super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 260,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        child: InkWell(
          onTap: () {},
          child: Card(
            elevation: 4,
            shadowColor: ColorsApp.mainColor,
            color: ColorsApp.backroundCard,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  Image.network(
                    image,
                    height: 150,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: ColorsApp.whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        height: 1.5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
