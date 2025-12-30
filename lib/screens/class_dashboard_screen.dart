import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'assignment_detail_screen.dart';
import 'material_detail_screen.dart';
import 'video_player_screen.dart';
import 'quiz_review_screen.dart';

class SubjectCard extends StatelessWidget {
  final String imagePath;
  final String date;
  final String title;
  final double progress;
  final String progressText;
  final double fillWidth;

  const SubjectCard({
    super.key,
    required this.imagePath,
    required this.date,
    required this.title,
    required this.progress,
    required this.progressText,
    required this.fillWidth,
  });

    @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ClassDashboardScreen(),
          ),
        );
      },
      child: Container(
        width: 319,
        height: 140,
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: Stack(
          children: [
            // Image
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 106,
                height: 140,
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
            ),
            // Date Text
            Positioned(
              top: 0,
              left: 122,
              child: SizedBox(
                width: 29,
                height: 14,
                child: Text(
                  date,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 9,
                    color: const Color(0xFF000000),
                    height: 1.0,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ),
            // Subject Title Text
            Positioned(
              top: 14,
              left: 122,
              child: SizedBox(
                width: 210,
                height: 51,
                child: Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    color: const Color(0xFF000000),
                    height: 1.0,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ),
            // Progress Bar Background
            Positioned(
              top: 84,
              left: 120,
              child: Container(
                width: 220,
                height: 10,
                decoration: BoxDecoration(
                  color: const Color(0xFFAF1116),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x40000000),
                      offset: const Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
            // Progress Text
            Positioned(
              top: 98,
              left: 122,
              child: SizedBox(
                width: 55,
                height: 14,
                child: Text(
                  progressText,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 9,
                    color: const Color(0xFF000000),
                    height: 1.0,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClassDashboardScreen extends StatefulWidget {
  const ClassDashboardScreen({super.key});

  @override
  State<ClassDashboardScreen> createState() => _ClassDashboardScreenState();
}

class _ClassDashboardScreenState extends State<ClassDashboardScreen> {
  int _selectedTabIndex = 0;

  Widget getContent(int index) {
    switch (index) {
      case 0:
        return SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 80),
          child: SizedBox(
            height: 900,
            child: Stack(
              children: [
                Positioned(
                  top: 31,
                  left: 21,
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => const MaterialBottomSheetWithTabs(meetingId: 6),
                      );
                    },
                    child: Container(
                      width: 332,
                      height: 123,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 41,
                  left: 35,
                  child: Container(
                    width: 92,
                    height: 22,
                    decoration: BoxDecoration(
                      color: const Color(0xFF53A9E3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                Positioned(
                  top: 47,
                  left: 50,
                  child: SizedBox(
                    width: 62,
                    height: 15,
                    child: Text(
                      'Pertemuan 1',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Colors.white,
                        height: 1.0,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 323,
                  child: SizedBox(
                    width: 22,
                    height: 16,
                    child: Image.asset(
                      'assets/images/grey_tick.png',
                      width: 22,
                      height: 16,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 35,
                  child: SizedBox(
                    width: 255,
                    height: 21,
                    child: Text(
                      '01 - Pengantar User Interface Design',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color(0xFF000000),
                        height: 1.0,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 135,
                  left: 35,
                  child: SizedBox(
                    width: 173,
                    height: 15,
                    child: Text(
                      '3 URLs, 2 Files, 3 Interactive Content',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                        color: const Color(0x80000000),
                        height: 1.0,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
                // Second rectangle
                Positioned(
                  top: 180,
                  left: 21,
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => const MaterialBottomSheetWithTabs(meetingId: 5),
                      );
                    },
                    child: Container(
                      width: 332,
                      height: 123,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 190,
                  left: 35,
                  child: Container(
                    width: 92,
                    height: 22,
                    decoration: BoxDecoration(
                      color: const Color(0xFF53A9E3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                Positioned(
                  top: 195,
                  left: 50,
                  child: SizedBox(
                    width: 62,
                    height: 15,
                    child: Text(
                      'Pertemuan 2',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Colors.white,
                        height: 1.0,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 189,
                  left: 323,
                  child: SizedBox(
                    width: 22,
                    height: 16,
                    child: Image.asset(
                      'assets/images/green_tick.png',
                      width: 22,
                      height: 16,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 240,
                  left: 35,
                  child: SizedBox(
                    width: 255,
                    height: 21,
                    child: Text(
                      '02 - Konsep User Interface Design',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color(0xFF000000),
                        height: 1.0,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 285,
                  left: 35,
                  child: SizedBox(
                    width: 173,
                    height: 15,
                    child: Text(
                      '2 URLs, 1 Kuis, 3 Files, 1 Tugas',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                        color: const Color(0x80000000),
                        height: 1.0,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
                // Third rectangle
                Positioned(
                  top: 329,
                  left: 21,
                  child: Container(
                    width: 332,
                    height: 123,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 339,
                  left: 35,
                  child: Container(
                    width: 92,
                    height: 22,
                    decoration: BoxDecoration(
                      color: const Color(0xFF53A9E3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                Positioned(
                  top: 344,
                  left: 50,
                  child: SizedBox(
                    width: 62,
                    height: 15,
                    child: Text(
                      'Pertemuan 3',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Colors.white,
                        height: 1.0,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 338,
                  left: 323,
                  child: SizedBox(
                    width: 22,
                    height: 16,
                    child: Image.asset(
                      'assets/images/green_tick.png',
                      width: 22,
                      height: 16,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 388,
                  left: 35,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => const VideoPlayerScreen(),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            const begin = Offset(1.0, 0.0);
                            const end = Offset.zero;
                            const curve = Curves.easeIn;
                            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                            var offsetAnimation = animation.drive(tween);
                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                          transitionDuration: const Duration(milliseconds: 300),
                        ),
                      );
                    },
                    child: SizedBox(
                      width: 320,
                      height: 21,
                      child: Text(
                        '03 - Interaksi pada User Interface Design',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color(0xFF000000),
                          height: 1.0,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 433,
                  left: 35,
                  child: SizedBox(
                    width: 173,
                    height: 15,
                    child: Text(
                      '3 URLs, 2 Files, 3 Interactive Content',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                        color: const Color(0x80000000),
                        height: 1.0,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
                // Fourth rectangle
                Positioned(
                  top: 478,
                  left: 21,
                  child: Container(
                    width: 332,
                    height: 123,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 488,
                  left: 35,
                  child: Container(
                    width: 92,
                    height: 22,
                    decoration: BoxDecoration(
                      color: const Color(0xFF53A9E3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                Positioned(
                  top: 493,
                  left: 50,
                  child: SizedBox(
                    width: 62,
                    height: 15,
                    child: Text(
                      'Pertemuan 4',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Colors.white,
                        height: 1.0,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 487,
                  left: 323,
                  child: SizedBox(
                    width: 22,
                    height: 16,
                    child: Image.asset(
                      'assets/images/green_tick.png',
                      width: 22,
                      height: 16,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 528,
                  left: 35,
                  child: SizedBox(
                    width: 320,
                    height: 21,
                    child: Text(
                      '04 - Ethnographic Observation',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color(0xFF000000),
                        height: 1.0,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 573,
                  left: 35,
                  child: SizedBox(
                    width: 173,
                    height: 15,
                    child: Text(
                      '3 URLs, 2 Files, 3 Interactive Content',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                        color: const Color(0x80000000),
                        height: 1.0,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),