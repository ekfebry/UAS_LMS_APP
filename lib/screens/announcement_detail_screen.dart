import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnnouncementDetailScreen extends StatelessWidget {
  const AnnouncementDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Pengumuman',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          // Title Text
          Positioned(
            top: 25, // 131 - 80
            left: 25,
            child: SizedBox(
              width: 299,
              height: 18,
              child: Text(
                'Maintenance Pra UAS Semester Genap 2020/2021',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  height: 1.0,
                  letterSpacing: 0.0,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          // User Image
          Positioned(
            top: 55, // 166 - 80
            left: 28,
            child: Image.asset(
              'assets/images/user.png',
              width: 23,
              height: 22,
            ),
          ),
          // Date Text
          Positioned(
            top: 63, // 170 - 80
            left: 58,
            child: SizedBox(
              width: 179,
              height: 14,
              child: Text(
                'By Admin Celoe - Rabu, 2 Juni 2021, 10:45',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0.0,
                  color: const Color(0xBF000000), // 75% opacity black
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          // Maintenance Image
          Positioned(
            top: 95, // 198 - 80
            left: 28,
            child: Container(
              width: 319,
              height: 185,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/maintenance.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),