import 'package:flutter/material.dart';

class AnnouncementDetailScreen extends StatelessWidget {
  const AnnouncementDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Announcement Detail'),
        backgroundColor: const Color(0xFFB74848),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text('Announcement Detail Screen'),
      ),
    );
  }
}