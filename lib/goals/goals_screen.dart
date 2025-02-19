import 'package:flutter/material.dart';
import 'goals_widgets.dart';
import 'new_goal_screen.dart'; // Add this import
import '../home/bottom_navbar.dart';

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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NewGoalScreen(),
            ),
          );
        },
        label: const Text("Add Goal"),
        icon: const Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 3),
    );
  }
}
