import 'package:flutter/material.dart';
import './add_expense.dart';
import './view_bills.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Good Morning, [Name]!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Net Worth: \$10,500",
              style: TextStyle(fontSize: 18, color: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}

class SpendingSummarySection extends StatelessWidget {
  const SpendingSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Spent this Month: \$500 / \$1,000",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "50%",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: 0.5,
              color: Colors.blueAccent,
              backgroundColor: Colors.grey[300],
            ),
            const SizedBox(height: 16),
            const Text(
              "2 Bills Due This Week",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/add-expense');
          },
          child: const Text("Add Expense"),
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/view-bills');
          },
          child: const Text("View Bills"),
        ),
      ],
    );
  }
}
