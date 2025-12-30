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
          LeftSlideInPageRoute(page: const ClassDashboardScreen()),
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

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 1.0, left: 15.0, right: 16.0, bottom: 80.0),
      children: [
        // Tugas Yang Akan Datang Text
        const SizedBox(height: 15),
        Text(
          'Tugas Yang Akan Datang',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: const Color(0xFF000000),
            height: 1.0,
            letterSpacing: 0,
          ),
        ),
        const SizedBox(height: 20),
        // Task Notification Card
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AssignmentDetailScreen(title: 'Assignment'),
              ),
            );
          },
          child: Container(
            width: 334,
            height: 157,
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
            child: Stack(
              children: [
                // Course Title
                Positioned(
                  top: 12,
                  left: 12,
                  child: SizedBox(
                    width: 256,
                    height: 42,
                    child: Text(
                      'DESAIN ANTARMUKA & PENGALAMAN\nPENGGUNA',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.white,
                        height: 1.0,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
                // Assignment Description
                Positioned(
                  top: 69,
                  left: 59,
                  child: SizedBox(
                    width: 218,
                    height: 18,
                    child: Text(
                      'Tugas 01 - UID Android Mobile Game',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white,
                        height: 1.0,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
                // Collection Time Label
                Positioned(
                  top: 116,
                  left: 92,
                  child: SizedBox(
                    width: 150,
                    height: 21,
                    child: Text(
                      'Waktu Pengumpulan',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.white,
                        height: 1.0,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
                // Deadline
                Positioned(
                  top: 137,
                  left: 89,
                  child: SizedBox(
                    width: 158,
                    height: 17,
                    child: Text(
                      'Jumat 26 Februari, 23:59 WIB',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: Colors.white,
                        height: 1.0,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        // Pengumuman Terakhir Text
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Pengumuman Terakhir',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: const Color(0xFF000000),
                height: 1.0,
                letterSpacing: 0,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  LeftSlideInPageRoute(page: const AnnouncementsScreen()),
                );
              },
              child: Text(
                'Lihat Semua',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  color: const Color(0xFF0500FF),
                  height: 1.0,
                  letterSpacing: 0,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        // Maintenance Background Rectangle
        Container(
          width: 400,
          height: 229,
          decoration: BoxDecoration(
            color: const Color.fromARGB(216, 240, 240, 240),
            borderRadius: BorderRadius.circular(0),
          ),
          child: Stack(
            children: [
              // Maintenance Pra UAS Text
              Positioned(
                top: 15,
                left: 20,
                child: SizedBox(
                  width: 271,
                  height: 17,
                  child: Text(
                    'Maintenance Pra UAS Semester Genap 2020/2021',
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