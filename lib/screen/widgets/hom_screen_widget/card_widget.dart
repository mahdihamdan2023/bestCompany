import 'package:best_comapny/constants/color_app.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String nameOne;
  final String nameTwo;
  final String typeOfIcon;
  final int hour;
  final int minute;
  final int count;
  const CardWidget(
      {super.key,
      required this.title,
      required this.nameOne,
      required this.nameTwo,
      required this.typeOfIcon,
      required this.hour,
      required this.minute,
      required this.count,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
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
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      image,
                      height: 150,
                      width: 200,
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
                          fontSize: 14,
                          height: 1.5,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text(
                            "$nameOne\n$nameTwo",
                            style: const TextStyle(
                              color: ColorsApp.mainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              height: 1.2,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              typeOfIcon == "F"
                                  ? const Icon(
                                      Icons.star,
                                      size: 15,
                                      color: ColorsApp.mainColor,
                                    )
                                  : const Icon(
                                      Icons.star_border_outlined,
                                      size: 15,
                                      color: ColorsApp.mainColor,
                                    ),
                              typeOfIcon == "F"
                                  ? const Icon(
                                      Icons.star,
                                      size: 15,
                                      color: ColorsApp.mainColor,
                                    )
                                  : const Icon(
                                      Icons.star_border_outlined,
                                      size: 15,
                                      color: ColorsApp.mainColor,
                                    ),
                              typeOfIcon == "F"
                                  ? const Icon(
                                      Icons.star,
                                      size: 15,
                                      color: ColorsApp.mainColor,
                                    )
                                  : const Icon(
                                      Icons.star_border_outlined,
                                      size: 15,
                                      color: ColorsApp.mainColor,
                                    ),
                              typeOfIcon == "F"
                                  ? const Icon(
                                      Icons.star,
                                      size: 15,
                                      color: ColorsApp.mainColor,
                                    )
                                  : const Icon(
                                      Icons.star_border_outlined,
                                      size: 15,
                                      color: ColorsApp.mainColor,
                                    ),
                              typeOfIcon == "F"
                                  ? const Icon(
                                      Icons.star,
                                      size: 15,
                                      color: ColorsApp.mainColor,
                                    )
                                  : const Icon(
                                      Icons.star_border_outlined,
                                      size: 15,
                                      color: ColorsApp.mainColor,
                                    ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.equals,
                                color: ColorsApp.mainColor,
                                size: 15,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "Lectures\nCount:$count",
                                style: const TextStyle(
                                  color: ColorsApp.mainColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  height: 1.2,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Row(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.clock,
                                color: ColorsApp.mainColor,
                                size: 15,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "Duration: $hour H\nand $minute M",
                                style: const TextStyle(
                                  color: ColorsApp.mainColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  height: 1.2,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
                const Positioned(
                  right: 10,
                  top: 130,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: ColorsApp.mainColor,
                    child: Text(
                      "\$10",
                      style: TextStyle(
                        color: ColorsApp.whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
