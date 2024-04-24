import 'package:best_comapny/constants/color_app.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardWidgetInstructor extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const CardWidgetInstructor(
      {super.key,
      required this.title,
      required this.image,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310,
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
                  Image.asset(
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.equals,
                          color: ColorsApp.mainColor,
                          size: 15,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          subtitle,
                          style: const TextStyle(
                            color: ColorsApp.mainColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
