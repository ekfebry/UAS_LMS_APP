import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'quiz_review_detail_screen.dart';
import 'quiz_review_screen.dart';

class ReviewPageScreen extends StatefulWidget {
  const ReviewPageScreen({super.key});

  @override
  State<ReviewPageScreen> createState() => _ReviewPageScreenState();
}

class _ReviewPageScreenState extends State<ReviewPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFB74848),
        elevation: 0,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'Review Jawaban',
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