import 'package:flutter/material.dart';

/// Displays the Total Assets value.
class TotalAssetsSection extends StatelessWidget {
  const TotalAssetsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Text(
        "Total Assets: \$30,000",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

/// Placeholder for a pie chart visualizing asset allocation.
class PieChartSection extends StatelessWidget {
  const PieChartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, // Placeholder height
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Text(
          "Pie Chart Placeholder\nReal Estate 50%, Investments 30%, Cash 20%",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

/// Placeholder for an asset growth line graph.
class AssetGrowthGraphSection extends StatelessWidget {
  const AssetGrowthGraphSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, // Placeholder height
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Text(
          "Asset Growth Graph Placeholder\n(Line Graph)",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
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
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.purple.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Recent Assets:",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text("- House: \$200,000",
              style: TextStyle(fontSize: 16, color: Colors.black54)),
          Text("- Stock Portfolio: \$5,000",
              style: TextStyle(fontSize: 16, color: Colors.black54)),
          Text("- Savings Account: \$2,000",
              style: TextStyle(fontSize: 16, color: Colors.black54)),
        ],
      ),
    );
  }
}
