import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'quiz_page_screen.dart';
import 'quiz_page3_screen.dart';

class QuizPage2Screen extends StatefulWidget {
  const QuizPage2Screen({super.key});

  @override
  State<QuizPage2Screen> createState() => _QuizPage2ScreenState();
}

class _QuizPage2ScreenState extends State<QuizPage2Screen> {
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
                'Quiz Review 2',
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
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 81,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF2BEE1A),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Center(
                child: Text(
                  '1',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 9,
                    height: 1.0,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 105,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Center(
                child: Text(
                  '2',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 9,
                    height: 1.0,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 129,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Center(
                child: Text(
                  '3',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 9,
                    height: 1.0,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 153,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Center(
                child: Text(
                  '4',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 9,
                    height: 1.0,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 177,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Center(
                child: Text(
                  '5',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 9,
                    height: 1.0,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 201,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Center(
                child: Text(
                  '6',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 9,
                    height: 1.0,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 225,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Center(
                child: Text(
                  '7',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 9,
                    height: 1.0,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 249,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Center(
                child: Text(
                  '8',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 9,
                    height: 1.0,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 273,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Center(
                child: Text(
                  '9',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 9,
                    height: 1.0,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 297,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Center(
                child: Text(
                  '10',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 9,
                    height: 1.0,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            top: 32,
            left: 81,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Center(
                child: Text(
                  '11',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 9,
                    height: 1.0,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            top: 32,
            left: 105,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Center(
                child: Text(
                  '12',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 9,
                    height: 1.0,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            top: 32,
            left: 129,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Center(
                child: Text(
                  '13',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 9,
                    height: 1.0,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            top: 32,
            left: 153,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Center(
                child: Text(
                  '14',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 9,
                    height: 1.0,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            top: 32,
            left: 177,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Center(
                child: Text(
                  '15',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 9,
                    height: 1.0,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),