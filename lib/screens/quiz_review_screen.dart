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