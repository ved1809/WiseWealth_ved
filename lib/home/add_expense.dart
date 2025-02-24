import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:wisewealth/animations/transitions.dart';

class AddExpenseScreen extends StatelessWidget {
  static const String routeName = '/add-expense';

  const AddExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Expense"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: "Expense Amount",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: "Expense Description",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  slideDownTransition(const HomeScreen()), // Transition to Home Screen
                );
              },
              child: const Text("Add Expense"),
            ),

          ],
        ),
      ),
    );
  }
}
