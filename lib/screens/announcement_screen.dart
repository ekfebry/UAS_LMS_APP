import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});

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
          // First Announcement
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            height: 50,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/announcement_detail'),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 21,
                    child: Image.asset(
                      'assets/images/pengumuman.png',
                      width: 27,
                      height: 26,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 58,
                    child: SizedBox(
                      width: 296,
                      height: 18,
                      child: Text(
                        'Maintenance Pra UAS Semester Genap 2020/2021',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          height: 1.0,
                          letterSpacing: 0.0,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
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
                ],
              ),
            ),
          ),
          // Second Announcement
          Positioned(
            top: 75,
            left: 0,
            right: 0,
            height: 50,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/announcement_detail'),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 21,
                    child: Image.asset(
                      'assets/images/pengumuman.png',
                      width: 27,
                      height: 26,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 58,
                    child: SizedBox(
                      width: 296,
                      height: 18,
                      child: Text(
                        'Pengumuman Maintance',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          height: 1.0,
                          letterSpacing: 0.0,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 58,
                    child: SizedBox(
                      width: 179,
                      height: 14,
                      child: Text(
                        'By Admin Celoe - Senin, 11 Januari 2021, 7:52',
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
                ],
              ),
            ),
          ),