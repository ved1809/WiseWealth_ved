import 'package:flutter/material.dart';
import 'assets_widgets.dart';
import '../home/bottom_navbar.dart';
import 'add_asset.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddAssetScreen.routeName);
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 1),
    );
  }
}
