import 'package:flutter/material.dart';
import 'package: google_fonts/google_fonts.dart';
import '../widgets/profile_tab.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color(0xFFB74848),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text('Profile Screen'),
      ),
    );
  }
}