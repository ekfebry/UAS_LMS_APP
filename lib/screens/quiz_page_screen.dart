import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'quiz_page2_screen.dart';

class QuizPageScreen extends StatefulWidget {
  const QuizPageScreen({super.key});

  @override
  State<QuizPageScreen> createState() => _QuizPageScreenState();
}

class _QuizPageScreenState extends State<QuizPageScreen> {
  int _selectedOption = 0; // 0: none, 1: A, 2: B

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFB74848),
        elevation: 0,
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        flexibleSpace: Stack(
          children: [
            // Title
            Positioned(
              top: 68,
              left: 0,
              right: 0,
              child: Text(
                'Quiz Review 1',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.white,
                  height: 1.0,
                  letterSpacing: 0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            // Clock image
            Positioned(
              top: 100,
              left: 288,
              child: SizedBox(
                width: 25,
                height: 21,
                child: Image.asset(
                  'assets/images/clock.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // Timer text
            Positioned(
              top: 105,
              left: 318,
              child: SizedBox(
                width: 43,
                height: 21,
                child: Text(
                  '15 : 00',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    height: 1.0,
                    letterSpacing: 0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),