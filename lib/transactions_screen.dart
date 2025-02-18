import 'package:flutter/material.dart';
import 'transactions_widgets.dart';
import 'bottom_navbar.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            TransactionSummarySection(),
            SizedBox(height: 16),
            FilterSection(),
            SizedBox(height: 16),
            RecentTransactionsSection(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tap handling: Add Transaction button tapped.
          print("Add Transaction tapped!");
        },
        child: const Icon(Icons.add),
      ),
      // Set currentIndex to 2 for Transactions in the bottom nav.
      bottomNavigationBar: const BottomNavBar(currentIndex: 2),
    );
  }
}
