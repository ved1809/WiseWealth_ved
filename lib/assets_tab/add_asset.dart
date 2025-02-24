import 'package:flutter/material.dart';

class AddAssetScreen extends StatelessWidget {
  static const String routeName = '/add-asset';

  const AddAssetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Asset"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: "Asset Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: "Asset Value",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: "Asset Type",
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: "Real Estate", child: Text("Real Estate")),
                DropdownMenuItem(value: "Investment", child: Text("Investment")),
                DropdownMenuItem(value: "Cash", child: Text("Cash")),
              ],
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Save logic here
              },
              child: const Text("Add Asset"),
            ),
          ],
        ),
      ),
    );
  }
}
