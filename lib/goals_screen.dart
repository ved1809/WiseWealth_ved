import 'package:flutter/material.dart';
import 'goals_widgets.dart';
import 'bottom_navbar.dart';

class GoalsScreen extends StatelessWidget {
  static const String routeName = '/goals';

  const GoalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Goals"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            GoalsSummarySection(),
            SizedBox(height: 16),
            ActiveGoalsSection(),
            SizedBox(height: 16),
            CompletedGoalsSection(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tap handling: Add New Goal button tapped.
          print("Add New Goal tapped!");
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 3),
    );
  }
}
