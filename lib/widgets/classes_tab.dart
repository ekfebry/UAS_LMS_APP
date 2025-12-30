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
             // Date Text
            Positioned(
              top: 0,
              left: 122,
              child: SizedBox(
                width: 29,
                height: 14,
                child: Text(
                  date,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 9,
                    color: const Color(0xFF000000),
                    height: 1.0,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ),
            // Subject Title Text
            Positioned(
              top: 14,
              left: 122,
              child: SizedBox(
                width: 210,
                height: 51,
                child: Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    color: const Color(0xFF000000),
                    height: 1.0,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ),
            // Progress Bar Background
            Positioned(
              top: 84,
              left: 120,
              child: Container(
                width: 220,
                height: 10,
                decoration: BoxDecoration(
                  color: const Color(0xFFAF1116),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x40000000),
                      offset: const Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
            // Progress Bar Fill
            Positioned(
              top: 84,
              left: 143 + 197 - fillWidth,
              child: Container(
                width: fillWidth,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x40000000),
                      offset: const Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
            // Progress Text
            Positioned(
              top: 98,
              left: 122,
              child: SizedBox(
                width: 55,
                height: 14,
                child: Text(
                  progressText,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 9,
                    color: const Color(0xFF000000),
                    height: 1.0,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClassesTab extends StatelessWidget {
  final VoidCallback? onBack;

  const ClassesTab({super.key, this.onBack});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // White AppBar-like container
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 100, // Approximate height for the bar
            color: Colors.white,
          ),
        ),
        // Back Icon
        Positioned(
          top: 40,
          left: 6,
          child: GestureDetector(
            onTap: onBack,
            child: const Icon(Icons.arrow_back, color: Colors.black, size: 30),
          ),
        ),
        // Kelas Saya Text
        Positioned(
          top: 60,
          left: 140,
          child: SizedBox(
            width: 120,
            height: 27,
            child: Text(
              'Kelas Saya',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                height: 1.0,
                letterSpacing: 0.0,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
        // Content below
        Positioned(
          top: 100,
          left: 0,
          right: 0,
          bottom: 0,
          child: ListView(
            padding: const EdgeInsets.only(top: 1.0, left: 15.0, right: 16.0, bottom: 80.0),
            children: [
              const SizedBox(height: 15),
              // Subject Cards
              SubjectCard(
                imagePath: 'assets/images/ui_ux.png',
                date: '2021/2',
                title: 'DESAIN ANTARMUKA & PENGALAMAN\nPENGGUNA D4SM-42-03 [ADY]',
                progress: 0.89,
                progressText: '89 % Selesai',
                fillWidth: 40,
              ),
              SubjectCard(
                imagePath: 'assets/images/pkn.jpg',
                date: '2021/2',
                title: 'KEWARGANEGARAAN\nD4SM-41-GAB1 [BBO]. JUMAT 2',
                progress: 0.86,
                progressText: '86 % Selesai',
                fillWidth: 63,
              ),
              SubjectCard(
                imagePath: 'assets/images/sistem_operasi.jpg',
                date: '2021/2',
                title: 'SISTEM OPERASI\nD4SM-44-02 [DDS]',
                progress: 0.9,
                progressText: '90 % Selesai',
                fillWidth: 20,
              ),
              SubjectCard(
                imagePath: 'assets/images/pemrograman_pbm.jpg',
                date: '2021/2',
                title: 'PEMROGRAMAN PERANGKAT BERGERAK\nMULTIMEDIA\nD4SM-41-GAB1 [APJ]',
                progress: 0.9,
                progressText: '90 % Selesai',
                fillWidth: 20,
              ),
              SubjectCard(
                imagePath: 'assets/images/inggris.jpg',
                date: '2021/2',
                title: 'BAHASA INGGRIS: BUSINESS AND\nSCIENTIFIC\nD4SM-41-GAB1 [ARS]',
                progress: 0.9,
                progressText: '90 % Selesai',
                fillWidth: 20,
              ),
              SubjectCard(
                imagePath: 'assets/images/pemrograman_multimedia.jpg',
                date: '2021/2',
                title: 'PEMROGRAMAN MULTIMEDIA INTERAKTIF\nD4SM-43-04 [TPR]',
                progress: 0.9,
                progressText: '90 % Selesai',
                fillWidth: 20,
              ),
              SubjectCard(
                imagePath: 'assets/images/olahraga.jpg',
                date: '2021/2',
                title: 'OLAH RAGA\nD3TT-44-02 [EYR]',
                progress: 0.9,
                progressText: '90 % Selesai',
                fillWidth: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}