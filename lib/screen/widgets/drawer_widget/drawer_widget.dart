import 'package:best_comapny/constants/color_app.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  final String title;
  final Icon icon;
  final Function()? onTap;
  const DrawerWidget(
      {super.key, required this.title, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        title,
        style: const TextStyle(
          color: ColorsApp.whiteColor,
          fontSize: 18,
        ),
      ),
      leading: icon,
    );
  }
}
