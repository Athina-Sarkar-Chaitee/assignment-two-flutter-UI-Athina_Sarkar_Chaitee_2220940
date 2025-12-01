import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Header
            Row(
              children: [
                const CircleAvatar(child: Text('S')),
                const SizedBox(width: 12),
                const Expanded(
                  child: Text('Welcome back,\nAthina Sarkar Chaitee',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
              ],
            ),
            const SizedBox(height: 16),

            // Balance card
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 183, 58, 173),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Total Balance',
                            style: TextStyle(color: Colors.white70)),
                        SizedBox(height: 8),
                        Text('\$1,221.82',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 6),
                        Text('Savings: \$2,500  •  Last 30 days: +\$100',
                            style: TextStyle(color: Colors.white70))
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.account_balance_wallet, color: Colors.white))
                ],
              ),
            ),
            const SizedBox(height: 12),

            // Action buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _ActionButton(icon: Icons.compare_arrows, label: 'Transfer'),
                _ActionButton(icon: Icons.receipt_long, label: 'Pay Bills'),
                _ActionButton(icon: Icons.show_chart, label: 'Invest'),
              ],
            ),
            const SizedBox(height: 16),

            // Recent transactions header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Recent Transactions',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text('View All', style: TextStyle(color: Color.fromARGB(255, 12, 91, 157))),
              ],
            ),
            const SizedBox(height: 8),

            // Recent transactions list (demo)
            Expanded(
              child: ListView(
                children: const [
                  _TransactionTile(
                    title: 'Netflix Subscription',
                    subtitle: 'Entertainment • Today',
                    amount: '-\$23.21',
                  ),
                  _TransactionTile(
                    title: 'Coffee Shop',
                    subtitle: 'Food & Drink • Today',
                    amount: '-\$14.45',
                  ),
                  _TransactionTile(
                    title: 'Salary Deposit',
                    subtitle: 'Income • Yesterday',
                    amount: '+\$120.00',
                    amountColor: Colors.green,
                  ),
                  _TransactionTile(
                    title: 'Grocery Store',
                    subtitle: 'Shopping • Yesterday',
                    amount: '-\$73.32',
                  ),
                  _TransactionTile(
                    title: 'Amazon Purchase',
                    subtitle: 'Shopping • 2 days ago',
                    amount: '-\$134.65',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  const _ActionButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(backgroundColor: Colors.deepPurple.shade50, child: Icon(icon, color: Colors.deepPurple)),
        const SizedBox(height: 6),
        Text(label)
      ],
    );
  }
}

class _TransactionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String amount;
  final Color amountColor;

  const _TransactionTile({
    required this.title,
    required this.subtitle,
    required this.amount,
    this.amountColor = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading: CircleAvatar(child: Text(title[0])),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Text(amount, style: TextStyle(color: amountColor, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
