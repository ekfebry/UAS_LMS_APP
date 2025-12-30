import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsTab extends StatelessWidget {
  final VoidCallback onBack;

  const NotificationsTab({super.key, required this.onBack});

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
        // Notifikasi Text
        Positioned(
          top: 60,
          left: 146,
          child: SizedBox(
            width: 84,
            height: 27,
            child: Text(
              'Notifikasi',
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
          child: Stack(
            children: [
              // Laporan Image
              Positioned(
                top: 45, // 145 - 100
                left: 14,
                child: Image.asset(
                  'assets/images/laporan.png',
                  width: 20,
                  height: 18,
                ),
              ),
              // Notification Text
              Positioned(
                top: 45,
                left: 36,
                child: SizedBox(
                  width: 324,
                  height: 30,
                  child: Text(
                    'Anda telah mengirimkan pengajuan tugas untuk Pengumpulan\nLaporan Akhir Assessment 3 (Tugas Besar)',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      height: 1.0,
                      letterSpacing: 0.0,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              // Time Text
              Positioned(
                top: 70, // 181 - 100
                left: 36,
                child: SizedBox(
                  width: 104,
                  height: 14,
                  child: Text(
                    '3 Hari 9 Jam Yang Lalu',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 9,
                      height: 1.0,
                      letterSpacing: 0.0,
                      color: const Color(0x80000000), // 50% opacity black
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              // Quiz Image
              Positioned(
                top: 115, // 225 - 100
                left: 14,
                child: Image.asset(
                  'assets/images/quiz.png',
                  width: 20,
                  height: 18,
                ),
              ),
              // Second Notification Text
              Positioned(
                top: 115,
                left: 36,
                child: SizedBox(
                  width: 324,
                  height: 30,
                  child: Text(
                    'Anda telah mengirimkan pengajuan tugas untuk Pengumpulan\nLaporan Akhir Assessment 3 (Tugas Besar)',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      height: 1.0,
                      letterSpacing: 0.0,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              // Second Time Text
              Positioned(
                top: 140, // 261 - 100
                left: 36,
                child: SizedBox(
                  width: 104,
                  height: 14,
                  child: Text(
                    '3 Hari 9 Jam Yang Lalu',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 9,
                      height: 1.0,
                      letterSpacing: 0.0,
                      color: const Color(0x80000000), // 50% opacity black
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              // Third Laporan Image
              Positioned(
                top: 185, // Adjusted spacing
                left: 14,
                child: Image.asset(
                  'assets/images/laporan.png',
                  width: 20,
                  height: 18,
                ),
              ),
              // Third Notification Text
              Positioned(
                top: 185,
                left: 36,
                child: SizedBox(
                  width: 324,
                  height: 30,
                  child: Text(
                    'Anda telah mengirimkan pengajuan tugas untuk Pengumpulan\nLaporan Akhir Assessment 3 (Tugas Besar)',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      height: 1.0,
                      letterSpacing: 0.0,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              // Third Time Text
              Positioned(
                top: 210, // Adjusted
                left: 36,
                child: SizedBox(
                  width: 104,
                  height: 14,
                  child: Text(
                    '3 Hari 9 Jam Yang Lalu',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 9,
                      height: 1.0,
                      letterSpacing: 0.0,
                      color: const Color(0x80000000), // 50% opacity black
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              // Fourth Quiz Image
              Positioned(
                top: 255, // Adjusted spacing
                left: 14,
                child: Image.asset(
                  'assets/images/quiz.png',
                  width: 20,
                  height: 18,
                ),
              ),
              // Fourth Notification Text
              Positioned(
                top: 255,
                left: 36,
                child: SizedBox(
                  width: 324,
                  height: 30,
                  child: Text(
                    'Anda telah mengirimkan pengajuan tugas untuk Pengumpulan\nLaporan Akhir Assessment 3 (Tugas Besar)',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      height: 1.0,
                      letterSpacing: 0.0,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              // Fourth Time Text
              Positioned(
                top: 280, // Adjusted
                left: 36,
                child: SizedBox(
                  width: 104,
                  height: 14,
                  child: Text(
                    '3 Hari 9 Jam Yang Lalu',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 9,
                      height: 1.0,
                      letterSpacing: 0.0,
                      color: const Color(0x80000000), // 50% opacity black
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),

}