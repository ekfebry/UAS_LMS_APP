import 'package:flutter/material.dart';

class MaterialDetailScreen extends StatelessWidget {
  const MaterialDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Detail'),
        backgroundColor: const Color(0xFFB74848),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text('Material Detail Screen'),
      ),
    );
  }
}