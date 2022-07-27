import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavBottomItem(
            press: () {},
            svgPath: "assets/icons/calendar.svg",
            text: "Today",
            isActive: false,
          ),
          NavBottomItem(
            press: () {},
            svgPath: "assets/icons/gym.svg",
            text: "All Exercises",
            isActive: true,
          ),
          NavBottomItem(
            press: () {},
            svgPath: "assets/icons/Settings.svg",
            text: "Setting",
            isActive: false,
          ),
        ],
      ),
    );
  }
}

class NavBottomItem extends StatelessWidget {
  const NavBottomItem({
    Key? key,
    required this.press,
    required this.text,
    required this.svgPath,
    required this.isActive,
  }) : super(key: key);
  final VoidCallback press;
  final String text;
  final String svgPath;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            svgPath,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            text,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
