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
          Positioned(
            top: 75,
            left: 14,
            child: SizedBox(
              width: 117,
              height: 20,
              child: Text(
                'Soal Nomor 2 / 15',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 180,
            left: 24,
            child: SizedBox(
              width: 338,
              height: 60,
              child: Text(
                'Dalam perancangan web yang baik, untuk teks yang menyampaikan isi konten digunakan font yang sama di setiap halaman, ini merupakan salah satu tujuan yaitu ?',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  height: 1.5,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 41,
            child: GestureDetector(
              onTap: () => setState(() => _selectedOption = _selectedOption == 1 ? 0 : 1),
              child: Container(
                width: 294,
                height: 42,
                decoration: BoxDecoration(
                  color: _selectedOption == 1 ? const Color(0xFFEA6262) : const Color(0xFFF7F7F7),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            top: 315,
            left: 50,
            child: SizedBox(
              width: 100,
              height: 15,
              child: Text(
                'A. Integrasi',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 352,
            left: 41,
            child: GestureDetector(
              onTap: () => setState(() => _selectedOption = _selectedOption == 2 ? 0 : 2),
              child: Container(
                width: 294,
                height: 42,
                decoration: BoxDecoration(
                  color: _selectedOption == 2 ? const Color(0xFFEA6262) : const Color(0xFFF7F7F7),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            top: 366,
            left: 50,
            child: SizedBox(
              width: 120,
              height: 15,
              child: Text(
                'B. Standarisasi',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 404,
            left: 41,
            child: GestureDetector(
              onTap: () => setState(() => _selectedOption = _selectedOption == 3 ? 0 : 3),
              child: Container(
                width: 294,
                height: 42,
                decoration: BoxDecoration(
                  color: _selectedOption == 3 ? const Color(0xFFEA6262) : const Color(0xFFF7F7F7),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            top: 418,
            left: 50,
            child: SizedBox(
              width: 80,
              height: 15,
              child: Text(
                'C. Konsistensi',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 456,
            left: 41,
            child: GestureDetector(
              onTap: () => setState(() => _selectedOption = _selectedOption == 4 ? 0 : 4),
              child: Container(
                width: 294,
                height: 42,
                decoration: BoxDecoration(
                  color: _selectedOption == 4 ? const Color(0xFFEA6262) : const Color(0xFFF7F7F7),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            top: 470,
            left: 50,
            child: SizedBox(
              width: 60,
              height: 15,
              child: Text(
                'D. Koefensi',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 508,
            left: 41,
            child: GestureDetector(
              onTap: () => setState(() => _selectedOption = _selectedOption == 5 ? 0 : 5),
              child: Container(
                width: 294,
                height: 42,
                decoration: BoxDecoration(
                  color: _selectedOption == 5 ? const Color(0xFFEA6262) : const Color(0xFFF7F7F7),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            top: 522,
            left: 50,
            child: SizedBox(
              width: 80,
              height: 15,
              child: Text(
                'E. Koreksi',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),