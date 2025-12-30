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
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1150, 
          child: Stack(
            children: [
          Positioned(
            top: 20,
            left: 40,
            child: Container(
              width: 295,
              height: 116,
              decoration: BoxDecoration(
                color: const Color(0xFFF7F7F7),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Positioned(
            top: 35,
            left: 54,
            child: SizedBox(
              width: 62,
              height: 14,
              child: Text(
                'Di Mulai Pada',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 35,
            left: 200,
            child: SizedBox(
              width: 126,
              height: 14,
              child: Text(
                'Kamis 25 Februari 2021 10:25',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 54,
            child: SizedBox(
              width: 29,
              height: 14,
              child: Text(
                'Status',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 200,
            child: SizedBox(
              width: 32,
              height: 14,
              child: Text(
                'Selesai',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 65,
            left: 54,
            child: SizedBox(
              width: 59,
              height: 14,
              child: Text(
                'Selesai Pada',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 65,
            left: 200,
            child: SizedBox(
              width: 126,
              height: 14,
              child: Text(
                'Kamis 25 Februari 2021 10:40',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 54,
            child: SizedBox(
              width: 93,
              height: 14,
              child: Text(
                'Waktu Penyelesaian',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 200,
            child: SizedBox(
              width: 73,
              height: 14,
              child: Text(
                '13 Menit 22 Detik',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 95,
            left: 54,
            child: SizedBox(
              width: 20,
              height: 14,
              child: Text(
                'Nilai',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 95,
            left: 200,
            child: SizedBox(
              width: 29,
              height: 14,
              child: Text(
                '0 / 100',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 175,
            left: 16,
            child: SizedBox(
              width: 59,
              height: 14,
              child: Text(
                'Pertanyaan 1',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 172,
            left: 93,
            child: Container(
              width: 252,
              height: 16,
              decoration: BoxDecoration(
                color: const Color(0xFFC4C4C4),
              ),
            ),
          ),
          Positioned(
            top: 175,
            left: 96,
            child: SizedBox(
              width: 234,
              height: 14,
              child: Text(
                'Radio button dapat digunakan untuk menentukan ?',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 93,
            child: SizedBox(
              width: 94,
              height: 28,
              child: Text(
                'Jawaban Tersimpan\nA. Jenis Kelamin',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 316,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => QuizReviewDetailScreen(),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      return SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(-1.0, 0.0),
                          end: Offset.zero,
                        ).animate(CurvedAnimation(
                          parent: animation,
                          curve: Curves.easeOut,
                        )),
                        child: child,
                      );
                    },
                    transitionDuration: const Duration(milliseconds: 300),
                  ),
                );
              },
              child: SizedBox(
                width: 44,
                height: 14,
                child: Text(
                  'Lihat Soal',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 9,
                    height: 1.0,
                    letterSpacing: 0,
                    color: const Color(0xFF0500FF),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),

          // Pertanyaan 2
          Positioned(
            top: 240,
            left: 16,
            child: SizedBox(
              width: 59,
              height: 14,
              child: Text(
                'Pertanyaan 2',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 237,
            left: 93,
            child: Container(
              width: 252,
              height: 57,
              decoration: BoxDecoration(
                color: const Color(0xFFC4C4C4),
              ),
            ),
          ),
          Positioned(
            top: 240,
            left: 96,
            child: SizedBox(
              width: 234,
              height: 50,
              child: Text(
                'Dalam perancangan web yang baik, untuk teks yang menyampaikan isi konten digunakan font yang sama di setiap halaman, ini merupakan salah satu tujuan yaitu ?',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 9,
                  height: 1.5,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 305,
            left: 93,
            child: SizedBox(
              width: 94,
              height: 28,
              child: Text(
                'Jawaban Tersimpan\nB. Konsistensi',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 305,
            left: 316,
            child: SizedBox(
              width: 44,
              height: 14,
              child: Text(
                'Lihat Soal',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: const Color(0xFF0500FF),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),

// Pertanyaan 3
          Positioned(
            top: 346,
            left: 16,
            child: SizedBox(
              width: 59,
              height: 14,
              child: Text(
                'Pertanyaan 3',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 346,
            left: 93,
            child: Container(
              width: 252,
              height: 57,
              decoration: BoxDecoration(
                color: const Color(0xFFC4C4C4),
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: 96,
            child: SizedBox(
              width: 234,
              height: 50,
              child: Text(
                'Dalam perancangan web yang baik, untuk teks yang menyampaikan isi konten digunakan font yang sama di setiap halaman, ini merupakan salah satu tujuan yaitu ?',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 9,
                  height: 1.5,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 415,
            left: 93,
            child: SizedBox(
              width: 94,
              height: 28,
              child: Text(
                'Jawaban Tersimpan\nC. Konsistensi',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 415,
            left: 316,
            child: SizedBox(
              width: 44,
              height: 14,
              child: Text(
                'Lihat Soal',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: const Color(0xFF0500FF),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),

          // Pertanyaan 4
          Positioned(
            top: 460,
            left: 16,
            child: SizedBox(
              width: 59,
              height: 14,
              child: Text(
                'Pertanyaan 4',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 457,
            left: 93,
            child: Container(
              width: 252,
              height: 16,
              decoration: BoxDecoration(
                color: const Color(0xFFC4C4C4),
              ),
            ),
          ),
          Positioned(
            top: 460,
            left: 96,
            child: SizedBox(
              width: 234,
              height: 14,
              child: Text(
                'Radio button dapat digunakan untuk menentukan ?',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 485,
            left: 93,
            child: SizedBox(
              width: 94,
              height: 28,
              child: Text(
                'Jawaban Tersimpan\nA. Jenis Kelamin',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 485,
            left: 316,
            child: SizedBox(
              width: 44,
              height: 14,
              child: Text(
                'Lihat Soal',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: const Color(0xFF0500FF),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),

          // Pertanyaan 5
          Positioned(
            top: 528,
            left: 16,
            child: SizedBox(
              width: 59,
              height: 20,
              child: Text(
                'Pertanyaan 5',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.5,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 528,
            left: 93,
            child: Container(
              width: 252,
              height: 57,
              decoration: BoxDecoration(
                color: const Color(0xFFC4C4C4),
              ),
            ),
          ),
          Positioned(
            top: 532,
            left: 96,
            child: SizedBox(
              width: 234,
              height: 50,
              child: Text(
                'Dalam perancangan web yang baik, untuk teks yang menyampaikan isi konten digunakan font yang sama di setiap halaman, ini merupakan salah satu tujuan yaitu ?',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 9,
                  height: 1.5,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 595,
            left: 93,
            child: SizedBox(
              width: 94,
              height: 28,
              child: Text(
                'Jawaban Tersimpan\nC. Konsistensi',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 595,
            left: 316,
            child: SizedBox(
              width: 44,
              height: 14,
              child: Text(
                'Lihat Soal',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: const Color(0xFF0500FF),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),

          // Pertanyaan 6
          Positioned(
            top: 635,
            left: 16,
            child: SizedBox(
              width: 59,
              height: 14,
              child: Text(
                'Pertanyaan 6',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 632,
            left: 93,
            child: Container(
              width: 252,
              height: 57,
              decoration: BoxDecoration(
                color: const Color(0xFFC4C4C4),
              ),
            ),
          ),
          Positioned(
            top: 637,
            left: 96,
            child: SizedBox(
              width: 234,
              height: 50,
              child: Text(
                'Dalam perancangan web yang baik, untuk teks yang menyampaikan isi konten digunakan font yang sama di setiap halaman, ini merupakan salah satu tujuan yaitu ?',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 9,
                  height: 1.5,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 700,
            left: 93,
            child: SizedBox(
              width: 94,
              height: 28,
              child: Text(
                'Jawaban Tersimpan\nC. Konsistensi',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 700,
            left: 316,
            child: SizedBox(
              width: 44,
              height: 14,
              child: Text(
                'Lihat Soal',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: const Color(0xFF0500FF),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),

          // Pertanyaan 7
          Positioned(
            top: 740,
            left: 16,
            child: SizedBox(
              width: 59,
              height: 14,
              child: Text(
                'Pertanyaan 7',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 737,
            left: 93,
            child: Container(
              width: 252,
              height: 16,
              decoration: BoxDecoration(
                color: const Color(0xFFC4C4C4),
              ),
            ),
          ),
          Positioned(
            top: 740,
            left: 96,
            child: SizedBox(
              width: 234,
              height: 14,
              child: Text(
                'Radio button dapat digunakan untuk menentukan ?',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 765,
            left: 93,
            child: SizedBox(
              width: 94,
              height: 28,
              child: Text(
                'Jawaban Tersimpan\nA. Jenis Kelamin',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 765,
            left: 316,
            child: SizedBox(
              width: 44,
              height: 14,
              child: Text(
                'Lihat Soal',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0,
                  color: const Color(0xFF0500FF),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
