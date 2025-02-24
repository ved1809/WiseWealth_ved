import 'package:flutter/material.dart';
import 'goals_screen.dart';
import 'package:wisewealth/animations/transitions.dart';

class NewGoalScreen extends StatelessWidget {
  const NewGoalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Goal"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Goal Name",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter goal name",
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Target Amount",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter target amount",
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  slideDownTransition(const GoalsScreen()), // Transition to Goals Screen
                );
                print("Goal added!");
              },
              child: const Text("Add Goal"),
            ),

          ],
        ),
      ),
    );
  }
}
