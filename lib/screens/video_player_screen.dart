import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoPlayerScreen extends StatelessWidget {
  const VideoPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFB74848),
        elevation: 0,
        toolbarHeight: 56,
        automaticallyImplyLeading: false,
        flexibleSpace: Stack(
          children: [
            Positioned(
              top: 30,
              left: 6,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, size: 28, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Positioned(
              top: 47,
              left: 0,
              right: 0,
              child: Text(
                'Video - User Interface Design For Beginner',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  color: Colors.white,
                  height: 1.0,
                  letterSpacing: 0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          color: Colors.white,
            child: Stack(
              children: [
                Positioned(
                  top: 20,
                  child: Center(
                    child: Image.asset(
                      'assets/images/ui_design.jpg',
                      width: 375,
                      height: 268,
                    ),
                  ),
                ),
                Positioned(
                  top: 310,
                  left: 18,
                  child: Container(
                    width: 97,
                    height: 20,
                    child: Text(
                      'Video Lain Nya',
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
                  top: 330,
                  child: Center(
                    child: Container(
                      width: 400,
                      height: 107,
                      color: Color(0xFFEEEFF1),
                    ),
                  ),
                ),
                Positioned(
                  top: 341,
                  left: 26,
                  child: Image.asset(
                    'assets/images/vid1.jpg',
                    width: 142,
                    height: 84,
                  ),
                ),
                Positioned(
                  top: 375,
                  left: 219,
                  child: Container(
                    width: 111,
                    height: 18,
                    child: Text(
                      'Interaction Design',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
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
                  top: 445,
                  left: 27,
                  child: Image.asset(
                    'assets/images/vid2.jpg',
                    width: 142,
                    height: 84,
                  ),
                ),
                Positioned(
                  top: 475,
                  left: 207,
                  child: Container(
                    width: 134,
                    height: 36,
                    child: Text(
                      'Pengantar Desain \nAntarmuka Pengguna',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
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
                  top: 538,
                  child: Center(
                    child: Container(
                      width: 400,
                      height: 107,
                      color: Color(0xFFEEEFF1),
                    ),
                  ),
                ),
                Positioned(
                  top: 549,
                  left: 26,
                  child: Image.asset(
                    'assets/images/vid3.jpg',
                    width: 142,
                    height: 84,
                  ),
                ),
                Positioned(
                  top: 580,
                  left: 207,
                  child: Container(
                    width: 137,
                    height: 54,
                    child: Text(
                      '4 Teori Dasar Desain \nAntarmuka Pengguna',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
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
                  top: 655,
                  left: 26,
                  child: Image.asset(
                    'assets/images/vid4.jpg',
                    width: 142,
                    height: 84,
                  ),
                ),
                Positioned(
                  top: 685,
                  left: 207,
                  child: Container(
                    width: 140,
                    height: 54,
                    child: Text(
                      'Tutorial Dasar Figma - \nUI/UX Design Software',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        height: 1.0,
                        letterSpacing: 0,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}