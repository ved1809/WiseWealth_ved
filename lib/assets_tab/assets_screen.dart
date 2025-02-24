import 'package:flutter/material.dart';
import 'assets_widgets.dart';
import '../home/bottom_navbar.dart';
import 'add_asset.dart';
import '../animations/animations.dart'; // Import animations
import '../animations/transitions.dart'; // Import animations

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
            children: [
              // Total assets section with a fade-in effect
              fadeIn(child: const TotalAssetsSection()),
              const SizedBox(height: 16),
              // Pie Chart section slides in from bottom
              slideInFromBottom(child: const PieChartSection()),
              const SizedBox(height: 16),
              // Asset Growth Graph scales in for a smooth transition
              scaleIn(child: const AssetGrowthGraphSection()),
              const SizedBox(height: 16),
              // Recent Assets Section slides in from the left
              slideInFromLeft(child: const RecentAssetsSection()),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            slideUpTransition(const AddAssetScreen()), // Smooth slide-up transition
          );
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 1),
    );
  }
}
