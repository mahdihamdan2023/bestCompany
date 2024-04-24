import 'package:best_comapny/constants/color_app.dart';
import 'package:best_comapny/constants/images_pathes.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class SwipCardWidget extends StatelessWidget {
  const SwipCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(
              ImagesPath.bannersImages[index],
              fit: BoxFit.fill,
            );
          },
          autoplay: true,
          itemCount: ImagesPath.bannersImages.length,
          pagination: const SwiperPagination(
            alignment: Alignment.bottomCenter,
            builder: DotSwiperPaginationBuilder(
              color: Colors.white,
              activeColor: ColorsApp.mainColor,
            ),
          ),
        ),
      ),
    );
  }
}
