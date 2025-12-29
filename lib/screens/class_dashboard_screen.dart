import 'package:flutter/material.dart';

class ClassDashboardScreen extends StatelessWidget {
  const ClassDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Class Dashboard'),
        backgroundColor: const Color(0xFFB74848),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text('Class Dashboard Screen'),
      ),
    );
  }
}