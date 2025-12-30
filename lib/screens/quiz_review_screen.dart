import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'review_page_screen.dart';
import 'quiz_page_screen.dart';
import 'class_dashboard_screen.dart';

class QuizReviewScreen extends StatefulWidget {
  const QuizReviewScreen({super.key});

  @override
  State<QuizReviewScreen> createState() => _QuizReviewScreenState();
}

class _QuizReviewScreenState extends State<QuizReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFB74848),
        elevation: 0,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'Quiz Review 1',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: Colors.white,
            height: 1.0,
            letterSpacing: 0,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 750, // Ensure enough height for both buttons
          child: Stack(
            children: [
          Positioned(
            top: 45,
            left: 44,
            child: SizedBox(
              width: 307,
              child: Text(
                'Silahkan kerjakan kuis ini dalam waktu 15 menit \nsebagai nilai pertama komponen kuis. \nJangan lupa klik tombol Submit Answer setelah menjawab\nseluruh pertanyaan. \n\nKerjakan sebelum hari Jum\'at, 26 Februari 2021 jam 23:59 WIB.',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Positioned(
            top: 175,
            left: 38,
            child: Container(
              width: 294,
              height: 109,
              decoration: BoxDecoration(
                color: const Color(0xFFF7F7F7),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Positioned(
            top: 190,
            left: 42,
            child: SizedBox(
              width: 287,
              height: 75,
              child: Text(
                'Kuis Akan di tutup pada Jumat, 26 February 2021, 11:59 PM\n\nBatas Waktu: 15 menit\n\nMetode Penilaian: Nilai Tertinggi',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: 345,
            left: 18,
            child: SizedBox(
              width: 250,
              child: Text(
                'Percobaan Yang Sudah Di Lakukan',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: 370,
            left: 0,
            child: Container(
              width: 385,
              height: 30,
              decoration: BoxDecoration(
                color: const Color(0xFFEA6262),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            top: 385,
            left: 12,
            child: SizedBox(
              width: 40,
              child: Text(
                'Status',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 11,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: 385,
            left: 215,
            child: SizedBox(
              width: 70,
              child: Text(
                'Nilai / 100.00',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 11,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: 385,
            left: 285,
            child: SizedBox(
              width: 100,
              child: Text(
                'Tinjau Kembali',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 11,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: 409,
            left: 0,
            child: Container(
              width: 400,
              height: 70,
              decoration: BoxDecoration(
                color: const Color(0xFFF7F7F7),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            top: 415,
            left: 12,
            child: SizedBox(
              width: 43,
              child: Text(
                'Selesai',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: 430,
            left: 9,
            child: SizedBox(
              width: 200,
              child: Text(
                'Dikirim Pada Kamis, 25 Februari 2021, 10:40',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),