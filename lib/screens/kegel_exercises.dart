import 'package:flutter/material.dart';

class KegelExercisesScreen extends StatelessWidget {
  const KegelExercisesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kegel Exercises'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              "Kegel Exercises for Pelvic Health",
              style: Theme.of(context).textTheme.headlineMedium, // Using headlineMedium
            ),
            const SizedBox(height: 20),
            Text(
              "1. Basic Kegel Exercise:\n\n"
                  "Squeeze your pelvic muscles, hold for 3-5 seconds, then relax. Repeat 10-15 times.\n\n"
                  "2. Fast Kegel Exercise:\n\n"
                  "Quickly squeeze and relax your pelvic muscles, do 10-15 repetitions.\n\n"
                  "3. Kegel Exercise with Weight:\n\n"
                  "Insert a small vaginal weight and perform Kegel exercises to strengthen pelvic muscles.",
              style: Theme.of(context).textTheme.bodyLarge, // Using bodyLarge for body text
            ),
            const SizedBox(height: 20),
            // Add any more sections or tips here
          ],
        ),
      ),
    );
  }
}
