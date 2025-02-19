import 'package:flutter/material.dart';
import 'home_widgets.dart';
import 'bottom_navbar.dart';
import 'side_menu.dart'; // Import the side_menu.dart file

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Finance Manager"),
        centerTitle: true,
      ),
      drawer: const SideMenu(), // Add the navigation drawer here.
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header Section
            const HeaderSection(),
            const SizedBox(height: 16),
            // Spending Summary Section
            const SpendingSummarySection(),
            const SizedBox(height: 16),
            // Buttons Section
            const ButtonsSection(),
            const SizedBox(height: 16),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 0),
    );
  }
}
