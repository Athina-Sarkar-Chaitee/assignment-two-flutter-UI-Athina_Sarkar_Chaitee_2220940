import 'package:flutter/material.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // Demo spending breakdown values
    final breakdown = [
      _BreakdownItem('Food & Drink', 120.00, 35),
      _BreakdownItem('Shopping', 420.00, 25),
      _BreakdownItem('Housing', 150.00, 22),
      _BreakdownItem('Transport', 200.00, 12),
      _BreakdownItem('Other', 44.00, 6),
    ];

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
                  child: Text('Welcome back,\nAthina Sarkar Chaitee', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(width: 8),
              ],
            ),
            const SizedBox(height: 16),
            const Text('Monthly Spending Report', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),

            // Total expenses card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Total Expenses (Last 30 days)', style: TextStyle(color: Colors.black54)),
                    SizedBox(height: 8),
                    Text('-\$934.00', style: TextStyle(color: Color.fromARGB(255, 234, 43, 30), fontSize: 22, fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Text('Up 12% from last month', style: TextStyle(color: Colors.redAccent)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Spending breakdown
            const Text('Spending Breakdown', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: breakdown.length,
                itemBuilder: (context, i) {
                  final item = breakdown[i];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(item.title),
                              Text('\$${item.amount.toStringAsFixed(2)} (${item.percent}%)'),
                            ],
                          ),
                          const SizedBox(height: 8),
                          LinearProgressIndicator(
                            value: item.percent / 100,
                            minHeight: 8,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BreakdownItem {
  final String title;
  final double amount;
  final int percent;
  _BreakdownItem(this.title, this.amount, this.percent);
}
