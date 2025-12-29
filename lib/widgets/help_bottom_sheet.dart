import 'package:flutter/material.dart';

class HelpBottomSheet extends StatelessWidget {
  const HelpBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Help & Support',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'For assistance, please contact support or check our FAQ section.',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}