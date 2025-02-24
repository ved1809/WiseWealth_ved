import 'package:flutter/material.dart';
import 'transactions_widgets.dart';
import '../home/bottom_navbar.dart';
import 'add_transaction.dart';
import '../animations/animations.dart'; // Import animations
import '../animations/transitions.dart'; // Import animations

class TransactionsScreen extends StatelessWidget {
  static const String routeName = '/transactions';

  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transactions"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              fadeInUp(child: const TransactionSummarySection()), // Added fade-in + slide-up animation
              const SizedBox(height: 16),
              slideInFromLeft(child: const FilterSection()), // Slide-in from left
              const SizedBox(height: 16),
              slideInFromBottom(child: const RecentTransactionsSection()), // Slide-in from bottom
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            slideUpTransition(const AddTransactionScreen()), // Smooth slide-up transition
          );
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 2),
    );
  }
}
