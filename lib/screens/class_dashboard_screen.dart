import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'assignment_detail_screen.dart';
import 'material_detail_screen.dart';
import 'video_player_screen.dart';
import 'quiz_review_screen.dart';

class SubjectCard extends StatelessWidget {
  final String imagePath;
  final String date;
  final String title;
  final double progress;
  final String progressText;
  final double fillWidth;

  const SubjectCard({
    super.key,
    required this.imagePath,
    required this.date,
    required this.title,
    required this.progress,
    required this.progressText,
    required this.fillWidth,
  });

    @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ClassDashboardScreen(),
          ),
        );
      },
      child: Container(
        width: 319,
        height: 140,
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: Stack(
          children: [
            // Image
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 106,
                height: 140,
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
            ),

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