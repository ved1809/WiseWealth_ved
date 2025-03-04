import 'package:flutter/material.dart';
import '../animations/animations.dart'; // Import animations
import '../theme/theme.dart'; // Import theme

class ProfilePage extends StatelessWidget {
  static const String routeName = '/profile'; // Add this line

  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: scaleIn(
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            fadeIn(
              child: Text(
                "User Name",
                style: AppTheme.textTheme.displayLarge,
              ),
            ),
            const SizedBox(height: 10),
            fadeIn(
              child: Text(
                "user@example.com",
                style: AppTheme.textTheme.bodyLarge,
              ),
            ),
            const SizedBox(height: 20),
            slideInFromLeft(
              child: ListTile(
                leading: const Icon(Icons.edit),
                title: const Text("Edit Profile"),
                onTap: () {},
              ),
            ),
            slideInFromLeft(
              child: ListTile(
                leading: const Icon(Icons.lock),
                title: const Text("Change Password"),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

