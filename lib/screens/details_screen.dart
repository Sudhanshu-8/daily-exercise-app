import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:daily_exercise_app/constants.dart';
import 'package:daily_exercise_app/widgets/bottom_nav_bar.dart';
import 'package:daily_exercise_app/widgets/search_bar.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: const DecorationImage(
                image: AssetImage("assets/images/meditation_bg.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: size.height * 0.05),
                    Text(
                      "Meditation",
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "3-10 MIN Course",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .6,
                      child: const Text(
                        "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5,
                      child: SearchBar(),
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: <Widget>[
                        SessionCard(sessionNum: 1, isDone: true, press: () {}),
                        SessionCard(sessionNum: 2, press: () {}),
                        SessionCard(sessionNum: 3, press: () {}),
                        SessionCard(sessionNum: 4, press: () {}),
                        SessionCard(sessionNum: 5, press: () {}),
                        SessionCard(sessionNum: 6, press: () {}),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Meditation",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      padding: const EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/icons/Meditation_women_small.svg",
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  "Basic 2",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text("Start to deepen your practice"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset("assets/icons/Lock.svg"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  final int sessionNum;
  final bool isDone;
  final VoidCallback? press;

  const SessionCard({
    super.key,
    required this.sessionNum,
    this.isDone = false,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Container(
            width: constraint.maxWidth / 2 - 10,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 17),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: kShadowColor,
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: press,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 42,
                        width: 43,
                        decoration: BoxDecoration(
                          color: isDone ? kBlueColor : Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: kBlueColor),
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: isDone ? Colors.white : kBlueColor,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Session $sessionNum",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
