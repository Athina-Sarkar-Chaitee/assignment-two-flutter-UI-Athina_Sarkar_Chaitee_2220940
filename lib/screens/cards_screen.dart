import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(height: 16),
            const Text('My Cards', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),

            // Demo card appearance
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.indigo.shade900, Colors.black87]),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.credit_card, color: Colors.white),
                  ),
                  SizedBox(height: 12),
                  Text('4567 **** **** 1234', style: TextStyle(color: Colors.white, fontSize: 22, letterSpacing: 2)),
                  SizedBox(height: 8),
                  Text('CARD HOLDER', style: TextStyle(color: Colors.white70)),
                  Text('STUDENT NAME', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 8),
                  Text('EXPIRES 12/28', style: TextStyle(color: Colors.white70)),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // Card actions (block, details, limit)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _CardAction(icon: Icons.block, label: 'Block'),
                _CardAction(icon: Icons.info, label: 'Details'),
                _CardAction(icon: Icons.tune, label: 'Limit'),
              ],
            ),
            const SizedBox(height: 18),

            const Text('Linked Accounts', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            Card(
              child: ListTile(
                leading: const CircleAvatar(child: Text('S')),
                title: const Text('Shared Savings'),
                subtitle: const Text('\$5,500.00'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardAction extends StatelessWidget {
  final IconData icon;
  final String label;
  const _CardAction({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(backgroundColor: Colors.grey.shade100, child: Icon(icon, color: Colors.black54)),
        const SizedBox(height: 8),
        Text(label)
      ],
    );
  }
}
