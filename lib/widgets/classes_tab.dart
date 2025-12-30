import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/assignment_detail_screen.dart';
import '../screens/announcements_screen.dart';
import '../screens/class_dashboard_screen.dart';
import '../screens/home_screen.dart'; 

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