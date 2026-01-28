import 'package:flutter/material.dart';

class TodayScreen extends StatelessWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Today\'s Exercise'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Today\'s Exercises',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // Example of Today's exercise card
            ExerciseCard(
              title: 'Morning Run',
              description: '30 minutes run in the morning to stay fit.',
              time: '6:30 AM',
            ),
            const SizedBox(height: 20),
            ExerciseCard(
              title: 'Strength Training',
              description: '20 minutes of strength training exercises.',
              time: '9:00 AM',
            ),
            const SizedBox(height: 20),
            ExerciseCard(
              title: 'Yoga',
              description: 'Relaxing yoga session for 15 minutes.',
              time: '5:00 PM',
            ),
          ],
        ),
      ),
    );
  }
}

class ExerciseCard extends StatelessWidget {
  final String title;
  final String description;
  final String time;

  const ExerciseCard({
    super.key,
    required this.title,
    required this.description,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              time,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
