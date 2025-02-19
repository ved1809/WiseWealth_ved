import 'package:flutter/material.dart';

/// Displays the Total Assets value in a card.
class TotalAssetsSection extends StatelessWidget {
  const TotalAssetsSection({super.key});

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
              "Total Assets",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "\$30,000",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}

/// Displays a placeholder for a pie chart.
class PieChartSection extends StatelessWidget {
  const PieChartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            Text(
              "Asset Allocation",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Placeholder(fallbackHeight: 150), // Replace with an actual pie chart later
          ],
        ),
      ),
    );
  }
}

/// Displays a placeholder for an asset growth graph.
class AssetGrowthGraphSection extends StatelessWidget {
  const AssetGrowthGraphSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            Text(
              "Asset Growth Over Time",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Placeholder(fallbackHeight: 150), // Replace with an actual graph later
          ],
        ),
      ),
    );
  }
}

/// Displays a list of recent assets.
class RecentAssetsSection extends StatelessWidget {
  const RecentAssetsSection({super.key});

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
              "Recent Assets",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.home, color: Colors.blue),
              title: Text("House"),
              subtitle: Text("\$200,000"),
            ),
            ListTile(
              leading: Icon(Icons.trending_up, color: Colors.green),
              title: Text("Stock Portfolio"),
              subtitle: Text("\$5,000"),
            ),
            ListTile(
              leading: Icon(Icons.savings, color: Colors.orange),
              title: Text("Savings Account"),
              subtitle: Text("\$2,000"),
            ),
          ],
        ),
      ),
    );
  }
}
