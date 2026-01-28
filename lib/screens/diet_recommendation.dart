import 'package:flutter/material.dart';

class DietRecommendationScreen extends StatelessWidget {
  const DietRecommendationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diet Recommendations'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              "Recommended Diet for Your Fitness Goals",
              style: Theme.of(context).textTheme.headlineMedium, // Using headlineMedium
            ),
            const SizedBox(height: 20),
            // Example Diet Recommendations
            Text(
              "1. Balanced Diet: High in vegetables, lean proteins, and healthy fats.",
              style: Theme.of(context).textTheme.bodyLarge, // Using bodyLarge for body text
            ),
            const SizedBox(height: 10),
            Text(
              "2. Low-Carb Diet: Focus on protein and non-starchy vegetables.",
              style: Theme.of(context).textTheme.bodyLarge, // Using bodyLarge for body text
            ),
            const SizedBox(height: 10),
            Text(
              "3. Mediterranean Diet: Incorporates fish, whole grains, olive oil, and vegetables.",
              style: Theme.of(context).textTheme.bodyLarge, // Using bodyLarge for body text
            ),
            const SizedBox(height: 20),
            // Add any more sections or diet-related tips here
          ],
        ),
      ),
    );
  }
}
