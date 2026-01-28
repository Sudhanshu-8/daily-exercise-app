import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:daily_exercise_app/constants.dart';
import 'package:daily_exercise_app/screens/details_screen.dart';
import 'package:daily_exercise_app/screens/settings.dart';
import 'package:daily_exercise_app/screens/diet_recommendation.dart';
import 'package:daily_exercise_app/screens/kegel_exercises.dart'; // Import Kegel Exercises Screen
import 'package:daily_exercise_app/screens/yoga.dart'; // Import Yoga Screen
import 'package:daily_exercise_app/widgets/bottom_nav_bar.dart';
import 'package:daily_exercise_app/widgets/category_card.dart';
import 'package:daily_exercise_app/widgets/search_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(
          displayColor: kTextColor,
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onSettingsPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SettingsScreen()),
          );
        },
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "Good Morning\nUser",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  CustomSearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Diet Recommendation",
                          svgSrc: "assets/icons/Hamburger.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DietRecommendationScreen(),
                              ),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Kegel Exercises",
                          svgSrc: "assets/icons/Excrecises.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const KegelExercisesScreen(), // Navigate to Kegel Exercises screen
                              ),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Meditation",
                          svgSrc: "assets/icons/Meditation.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(),
                              ),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Yoga",
                          svgSrc: "assets/icons/yoga.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const YogaScreen(), // Navigate to Yoga screen
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
