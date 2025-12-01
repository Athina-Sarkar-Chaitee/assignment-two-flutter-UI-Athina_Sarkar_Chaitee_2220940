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
                CircleAvatar(child: Text('S')),
                SizedBox(width: 12),
                Expanded(
                  child: Text('Welcome back,\nSTUDENT NAME', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(width: 8),
              ],
            ),
            const SizedBox(height: 24),

            // Profile tile
            CircleAvatar(radius: 36, child: const Text('SN', style: TextStyle(fontSize: 20))),
            const SizedBox(height: 16),

            Card(
              child: ListTile(title: const Text('Name'), subtitle: const Text('STUDENT NAME (YOUR NAME HERE)')),
            ),
            Card(
              child: ListTile(title: const Text('Student ID'), subtitle: const Text('S12345 (YOUR ID HERE)')),
            ),
            Card(
              child: ListTile(title: const Text('Email'), subtitle: const Text('student.name@iub.edu (YOUR IUB EMAIL HERE)')),
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
                      "I believe financial health is key to academic success. I love hiking on weekends and planning my next big travel adventure!",
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
