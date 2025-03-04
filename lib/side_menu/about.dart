import 'package:flutter/material.dart';
import '../animations/animations.dart'; // Import animations
import '../theme/theme.dart'; // Import theme

class AboutPage extends StatelessWidget {
  static const String routeName = '/about'; // Add this line

  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            fadeIn(
              child: Text(
                "About WiseWealth",
                style: AppTheme.textTheme.displayLarge,
              ),
            ),
            const SizedBox(height: 10),
            fadeIn(
              child: Text(
                "WiseWealth helps people manage their personal finances effectively. It includes tools for budgeting, tracking expenses, bill reminders, and savings goals—all in one place. This app helps users take control of their finances and make smart decisions.clean UI and smooth animations.",
                style: AppTheme.textTheme.bodyLarge,
              ),
            ),
            const SizedBox(height: 20),
            slideInFromLeft(
              child: ListTile(
                leading: const Icon(Icons.verified),
                title: const Text("Version 1.0.0"),
              ),
            ),
            slideInFromLeft(
              child: ListTile(
                leading: const Icon(Icons.code),
                title: const Text("Developed by Hemant and Ved"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
