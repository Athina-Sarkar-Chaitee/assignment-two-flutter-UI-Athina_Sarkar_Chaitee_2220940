import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Header
            Row(
              children: const [
                CircleAvatar(child: Text('A')),
                SizedBox(width: 12),
                Expanded(
                  child: Text('Welcome back,\nAthina Sarkar Chaitee', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(width: 8),
              ],
            ),
            const SizedBox(height: 24),

            // Profile tile
            CircleAvatar(radius: 36, child: const Text('ASC', style: TextStyle(fontSize: 20))),
            const SizedBox(height: 16),

            Card(
              child: ListTile(title: const Text('Name'), subtitle: const Text('Athina Sarkar Chaitee')),
            ),
            Card(
              child: ListTile(title: const Text('Student ID'), subtitle: const Text('2220940')),
            ),
            Card(
              child: ListTile(title: const Text('Email'), subtitle: const Text('2220940@iub.edu.bd')),
            ),
            const SizedBox(height: 8),

            // Bio / Story
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Bio / Story', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Text(
                      "I'm currently focusing on my final year, balancing studies with building side projects. "
                      "I believe financial health is key to academic success. I love watching drama on weekends.!",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
