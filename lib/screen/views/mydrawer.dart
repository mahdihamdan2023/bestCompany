import 'package:best_comapny/constants/color_app.dart';
import 'package:best_comapny/constants/images_pathes.dart';
import 'package:best_comapny/screen/widgets/drawer_widget/drawer_widget.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorsApp.backroundApp,
      child: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                ImagesPath.logo,
                width: 100,
                height: 50,
              ),
            ),
            DrawerWidget(
              title: "Sign Up",
              icon: const Icon(
                Icons.app_registration,
                color: ColorsApp.whiteColor,
              ),
              onTap: () {},
            ),
            const Divider(
              color: ColorsApp.whiteColor,
            ),
            DrawerWidget(
              title: "Login",
              icon: const Icon(
                Icons.login,
                color: ColorsApp.whiteColor,
              ),
              onTap: () {},
            ),
            const Divider(
              color: ColorsApp.whiteColor,
            ),
            DrawerWidget(
              title: "Languages",
              icon: const Icon(
                Icons.language,
                color: ColorsApp.whiteColor,
              ),
              onTap: () {},
            ),
            const Divider(
              color: ColorsApp.whiteColor,
            ),
            DrawerWidget(
              title: "Categories",
              icon: const Icon(
                Icons.list_alt_sharp,
                color: ColorsApp.whiteColor,
              ),
              onTap: () {},
            ),
            const Divider(
              color: ColorsApp.whiteColor,
            ),
            DrawerWidget(
              title: "Contact Information",
              icon: const Icon(
                Icons.contact_phone_sharp,
                color: ColorsApp.whiteColor,
              ),
              onTap: () {},
            ),
            const Divider(
              color: ColorsApp.whiteColor,
            ),
            DrawerWidget(
              title: "Agreements",
              icon: const Icon(
                Icons.approval_rounded,
                color: ColorsApp.whiteColor,
              ),
              onTap: () {},
            ),
            const Divider(
              color: ColorsApp.whiteColor,
            ),
          ],
        ),
      ),
    );
  }
}
