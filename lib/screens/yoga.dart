import 'package:flutter/material.dart';

class YogaScreen extends StatelessWidget {
  const YogaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yoga'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              "Yoga for Flexibility and Strength",
              style: Theme.of(context).textTheme.headlineMedium, // Using headlineMedium
            ),
            const SizedBox(height: 20),
            Text(
              "1. Downward Dog Pose (Adho Mukha Svanasana):\n\n"
                  "Start in a plank position, then lift your hips towards the ceiling and form an inverted V shape. Hold for 5-10 breaths.\n\n"
                  "2. Warrior Pose (Virabhadrasana):\n\n"
                  "Stand with legs wide apart, bend one knee and stretch your arms in opposite directions. Hold for 5-10 breaths.\n\n"
                  "3. Child's Pose (Balasana):\n\n"
                  "Kneel on the floor, sit back on your heels, and stretch your arms forward on the floor. Relax in this position for several breaths.",
              style: Theme.of(context).textTheme.bodyLarge, // Using bodyLarge for body text
            ),
            const SizedBox(height: 20),
            // Add more yoga poses or sections here
          ],
        ),
      ),
    );
  }
}
