import 'package:best_comapny/constants/color_app.dart';
import 'package:best_comapny/constants/images_pathes.dart';
import 'package:best_comapny/constants/text_costant.dart';
import 'package:best_comapny/controllers/home_controller.dart';
import 'package:best_comapny/screen/views/mydrawer.dart';
import 'package:best_comapny/screen/widgets/hom_screen_widget/Third_text_widget.dart';
import 'package:best_comapny/screen/widgets/hom_screen_widget/card_widget.dart';
import 'package:best_comapny/screen/widgets/hom_screen_widget/card_widget_categories.dart';
import 'package:best_comapny/screen/widgets/hom_screen_widget/card_widget_instructors.dart';
import 'package:best_comapny/screen/widgets/hom_screen_widget/first_text_widget.dart';
import 'package:best_comapny/screen/widgets/hom_screen_widget/forth_text_widget.dart';
import 'package:best_comapny/screen/widgets/hom_screen_widget/seach_textfield.dart';
import 'package:best_comapny/screen/widgets/hom_screen_widget/second_text_widget.dart';
import 'package:best_comapny/screen/widgets/hom_screen_widget/swip_card_widget.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      key: homeController.homeKey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        onPressed: () {
                          homeController.homeKey.currentState!.openDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          size: 30,
                        ),
                        color: ColorsApp.whiteColor,
                      ),
                    ),
                    Center(
                      child: Image.asset(
                        ImagesPath.logo,
                        width: 100,
                        height: 50,
                      ),
                    ),
                    const SearchTextField(),
                    const SizedBox(height: 30),
                    const SwipCardWidget(),
                    const SizedBox(height: 20),
                    const FirstTextWidget(),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 360,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: homeController.cards.length,
                        itemBuilder: (context, index) {
                          return CardWidget(
                            image: homeController.cards[index].image,
                            title: homeController.cards[index].title,
                            nameOne: homeController.cards[index].nameOne,
                            nameTwo: homeController.cards[index].nameTwo,
                            typeOfIcon: homeController.cards[index].type,
                            count: homeController.cards[index].count,
                            hour: homeController.cards[index].hour,
                            minute: homeController.cards[index].minute,
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        TextsConstanst.text1,
                        style: TextStyle(
                          fontSize: 14,
                          color: ColorsApp.whiteColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const SecondTextWidget(),
                    const SizedBox(height: 30),
                    const ThirdTextWidget(),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 360,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: homeController.cards.length,
                        itemBuilder: (context, index) {
                          return CardWidget(
                            image: homeController.cards[index].image,
                            title: homeController.cards[index].title,
                            nameOne: homeController.cards[index].nameOne,
                            nameTwo: homeController.cards[index].nameTwo,
                            typeOfIcon: homeController.cards[index].type,
                            count: homeController.cards[index].count,
                            hour: homeController.cards[index].hour,
                            minute: homeController.cards[index].minute,
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        TextsConstanst.text1,
                        style: TextStyle(
                          fontSize: 14,
                          color: ColorsApp.whiteColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Top Categories",
                        style: TextStyle(
                          fontSize: 18,
                          color: ColorsApp.whiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    DynamicHeightGridView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: homeController.toCategories.length,
                      builder: ((context, index) {
                        return CardWidgetCategories(
                          title: homeController.toCategories[index].title,
                          image: homeController.toCategories[index].image,
                        );
                      }),
                      crossAxisCount: 2,
                    ),
                    const SizedBox(height: 30),
                    const ForthTextWidget(),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 280,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: homeController.instructors.length,
                        itemBuilder: (context, index) {
                          return CardWidgetInstructor(
                              title: homeController.instructors[index].title,
                              image: homeController.instructors[index].image,
                              subtitle:
                                  homeController.instructors[index].nameOne);
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsApp.mainColor,
        onPressed: () {},
        child: const FaIcon(
          FontAwesomeIcons.whatsapp,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        backgroundColor: ColorsApp.whiteColor,
        elevation: 2,
        height: kBottomNavigationBarHeight,
        onDestinationSelected: (index) {},
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.home),
            icon: Icon(IconlyLight.home),
            label: "Home",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.newspaper),
            icon: Icon(Icons.newspaper),
            label: "New Courses",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_2_outlined),
            label: "Instructor",
          ),
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.info_circle),
            icon: Icon(IconlyBold.info_circle),
            label: "About us",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.help_outline),
            icon: Icon(Icons.help_outline),
            label: "Help",
          ),
        ],
      ),
    );
  }
}
