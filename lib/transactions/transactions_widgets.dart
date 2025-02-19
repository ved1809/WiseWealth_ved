import 'package:flutter/material.dart';

/// Displays a summary of transactions (income, expenses, etc.).
class TransactionSummarySection extends StatelessWidget {
  const TransactionSummarySection({super.key});

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
              "Transaction Summary",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Income: \$1,500",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
                ),
                Text(
                  "Expenses: \$900",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
                ),
              ],
            ),
            const SizedBox(height: 8),
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
            const LinearProgressIndicator(
              value: 0.55,
              minHeight: 8,
            ),
          ],
        ),
      ),
    );
  }
}

/// Displays filter options for transactions.
class FilterSection extends StatelessWidget {
  const FilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OutlinedButton(
              onPressed: () => print("Filter by Category tapped!"),
              child: const Text("Category"),
            ),
            OutlinedButton(
              onPressed: () => print("Filter by Date tapped!"),
              child: const Text("Date"),
            ),
            OutlinedButton(
              onPressed: () => print("Filter by Type tapped!"),
              child: const Text("Type"),
            ),
          ],
        ),
      ),
    );
  }
}

/// Displays a list of recent transactions.
class RecentTransactionsSection extends StatelessWidget {
  const RecentTransactionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Recent Transactions",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.attach_money, color: Colors.green),
              title: Text("Salary"),
              subtitle: Text("Income - \$1,500"),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.red),
              title: Text("Grocery Store"),
              subtitle: Text("Expense - \$100"),
            ),
            ListTile(
              leading: Icon(Icons.restaurant, color: Colors.red),
              title: Text("Restaurant"),
              subtitle: Text("Expense - \$50"),
            ),
            ListTile(
              leading: Icon(Icons.work, color: Colors.green),
              title: Text("Freelance Work"),
              subtitle: Text("Income - \$300"),
            ),
          ],
        ),
      ),
    );
  }
}
