import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meditaion_app_ui/routes.dart';
import 'package:meditaion_app_ui/size_config.dart';

import 'category_card.dart';
import 'search_bar.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: SizeConfig.screenHeight * .45,
          decoration: const BoxDecoration(
            color: Color(0xfff5cebb),
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                        color: Color(0xfff2bea1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "Good Morning HasuerYu",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  const SearchBar(),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 30,
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      children: [
                        CategoryCard(
                          svgPath: "assets/icons/Hamburger.svg",
                          text: "Diet Recommendation",
                          press: () {},
                        ),
                        CategoryCard(
                          svgPath: "assets/icons/Excrecises.svg",
                          text: "Kegel Exercises",
                          press: () {},
                        ),
                        CategoryCard(
                          svgPath: "assets/icons/Meditation.svg",
                          press: ()=>Get.toNamed(Routes.detailScreen),
                          text: "Meditation",
                        ),
                        CategoryCard(
                          svgPath: "assets/icons/yoga.svg",
                          text: "Yoga",
                          press: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
