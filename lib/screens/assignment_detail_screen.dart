import 'package:flutter/material.dart';

class AssignmentDetailScreen extends StatelessWidget {
  final String title;
  
  const AssignmentDetailScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color(0xFFB74848),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text('$title Detail Screen'),
      ),
    );
  }
}