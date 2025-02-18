import 'package:flutter/material.dart';
import 'assets_widgets.dart';
import 'bottom_navbar.dart';

class AssetsScreen extends StatelessWidget {
  static const String routeName = '/assets';

  const AssetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Assets"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // Using ListView so the content scrolls on smaller screens
        child: ListView(
          children: const [
            TotalAssetsSection(),
            SizedBox(height: 16),
            PieChartSection(),
            SizedBox(height: 16),
            AssetGrowthGraphSection(),
            SizedBox(height: 16),
            RecentAssetsSection(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // For now, simply print to console or navigate to an Add Asset screen if available.
          print("Add Asset tapped!");
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 1),
    );
  }
}
