import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:daily_exercise_app/constants.dart';
import 'package:daily_exercise_app/screens/settings.dart';
import 'package:daily_exercise_app/screens/today.dart';  // Import the TodayScreen

class BottomNavBar extends StatelessWidget {
  final VoidCallback? onSettingsPressed;

  const BottomNavBar({super.key, this.onSettingsPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // Navigating to TodayScreen
          BottomNavItem(
            title: "Today",
            svgScr: "assets/icons/calendar.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TodayScreen()), // Navigate to TodayScreen
              );
            },
          ),
          const BottomNavItem(
            title: "All Exercises",
            svgScr: "assets/icons/gym.svg",
            isActive: true,
          ),
          BottomNavItem(
            title: "Settings",
            svgScr: "assets/icons/Settings.svg",
            press: onSettingsPressed,
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgScr;
  final String title;
  final VoidCallback? press;
  final bool isActive;

  const BottomNavItem({
    super.key,
    required this.svgScr,
    required this.title,
    this.press,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgScr,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
