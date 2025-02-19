import 'package:flutter/material.dart';

class TransactionSummarySection extends StatelessWidget {
  const TransactionSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.teal.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First row: Income and Expenses
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Income: \$1,500",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "Expenses: \$900",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Second row: Remaining and Budget
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Remaining: \$600",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "Budget: \$1,000",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Progress Bar Placeholder
          const LinearProgressIndicator(
            value: 0.9, // Placeholder progress value
            minHeight: 8,
          ),
        ],
      ),
    );
  }
}

class FilterSection extends StatelessWidget {
  const FilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.yellow.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Outlined buttons for filtering
          OutlinedButton(
            onPressed: () {
              print("Filter by Category tapped!");
            },
            child: const Text("Category"),
          ),
          OutlinedButton(
            onPressed: () {
              print("Filter by Date tapped!");
            },
            child: const Text("Date"),
          ),
          OutlinedButton(
            onPressed: () {
              print("Filter by Type tapped!");
            },
            child: const Text("Type"),
          ),
        ],
      ),
    );
  }
}

class RecentTransactionsSection extends StatelessWidget {
  const RecentTransactionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.pink.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Recent Transactions:",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            "- Salary: \$1,500 (Income)",
            style: TextStyle(fontSize: 16),
          ),
          Text(
            "- Grocery Store: \$100 (Expense)",
            style: TextStyle(fontSize: 16),
          ),
          Text(
            "- Restaurant: \$50 (Expense)",
            style: TextStyle(fontSize: 16),
          ),
          Text(
            "- Freelance Work: \$300 (Income)",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
