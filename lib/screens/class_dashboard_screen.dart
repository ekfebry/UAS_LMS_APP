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
                // Fifth rectangle
                Positioned(
                  top: 627,
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
                  top: 637,
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
                  top: 642,
                  left: 50,
                  child: SizedBox(
                    width: 62,
                    height: 15,
                    child: Text(
                      'Pertemuan 5',
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
                  top: 636,
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
                  top: 677,
                  left: 35,
                  child: SizedBox(
                    width: 320,
                    height: 21,
                    child: Text(
                      '05 - UID Testing',
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
                  top: 722,
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
                // Sixth rectangle
                Positioned(
                  top: 776,
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
                  top: 786,
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
                  top: 791,
                  left: 50,
                  child: SizedBox(
                    width: 62,
                    height: 15,
                    child: Text(
                      'Pertemuan 6',
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
                  top: 785,
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
                  top: 826,
                  left: 35,
                  child: SizedBox(
                    width: 320,
                    height: 21,
                    child: Text(
                      '06 - Assessment 1',
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
                  top: 871,
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
              ],
            ),
          ),
        );
      case 1:
        return SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 80),
          child: SizedBox(
            height: 1000,
            child: Stack(
              children: [
                Positioned(
                  top: 31,
                  left: 21,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => const QuizReviewScreen(),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            const begin = Offset(-1.0, 0.0);
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
                  left: 67,
                  child: SizedBox(
                    width: 62,
                    height: 15,
                    child: Text(
                      'QUIZ',
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
                      'assets/images/green_tick.png',
                      width: 22,
                      height: 16,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 80,
                  left: 35,
                  child: Opacity(
                    opacity: 1,
                    child: SizedBox(
                      width: 46,
                      height: 37,
                      child: Image.asset(
                        'assets/images/quiz.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 85,
                  child: SizedBox(
                    width: 255,
                    height: 21,
                    child: Text(
                      'Quiz Review 01',
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
                    width: 280,
                    height: 15,
                    child: Text(
                      'Tenggat Waktu : 26 Februari 2021 23:59 WIB',
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
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) =>
                              AssignmentDetailScreen(
                            title: 'Tugas 01 - UID Android Mobile Game',
                          ),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            const begin = Offset(-1.0, 0.0);
                            const end = Offset.zero;
                            const curve = Curves.easeIn;
                            final tween =
                                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                            final offsetAnimation = animation.drive(tween);
                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                          transitionDuration: const Duration(milliseconds: 300),
                        ),
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
                  left: 66,
                  child: SizedBox(
                    width: 62,
                    height: 15,
                    child: Text(
                      'Tugas',
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
                      'assets/images/grey_tick.png',
                      width: 22,
                      height: 16,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 240,
                  left: 85,
                  child: SizedBox(
                    width: 255,
                    height: 21,
                    child: Text(
                      'Tugas 01 - UID Android Mobile Game',
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
                    width: 280,
                    height: 15,
                    child: Text(
                      'Tenggat Waktu : 26 Februari 2021 23:59 WIB',
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
                Positioned(
                  top: 230,
                  left: 35,
                  child: Opacity(
                    opacity: 1,
                    child: SizedBox(
                      width: 46,
                      height: 37,
                      child: Image.asset(
                        'assets/images/laporan.png',
                        fit: BoxFit.contain,
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
                  left: 85,
                  child: SizedBox(
                    width: 255,
                    height: 21,
                    child: Text(
                      'Kuis - Assessment 2',
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
                  top: 433,
                  left: 35,
                  child: SizedBox(
                    width: 280,
                    height: 15,
                    child: Text(
                      'Tenggat Waktu : 26 Februari 2021 23:59 WIB',
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
                Positioned(
                  top: 380,
                  left: 35,
                  child: Opacity(
                    opacity: 1,
                    child: SizedBox(
                      width: 46,
                      height: 37,
                      child: Image.asset(
                        'assets/images/quiz.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    void selectTab(int index) {
      setState(() {
        _selectedTabIndex = index;
      });
    }

    // Calculate indicator position based on selected tab
    double indicatorLeft = 95; // Materi
    if (_selectedTabIndex == 1) indicatorLeft = 240; // Tugas & Kuis

    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFFB74848),
            elevation: 0,
            toolbarHeight: 150,
            automaticallyImplyLeading: false,
            flexibleSpace: Stack(
              children: [
                Positioned(
                  top: 36,
                  left: 6,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 75,
                  left: 0,
                  right: 0,
                  child: Text(
                    'DESAIN ANTARMUKA & PENGALAMAN\nPENGGUNA D4SM-42-03 [ADY]',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: Container(
            color: Colors.white,
            margin: const EdgeInsets.only(top: 40),
            child: getContent(_selectedTabIndex),
          ),
        ),
        Positioned(
          top: 155, // Position below the app bar
          left: 16,
          right: 16,
          child: Material(
            elevation: 12,
            borderRadius: BorderRadius.circular(15),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => selectTab(0),
                    child: Text(
                      'Materi',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 1.0,
                        letterSpacing: 0.0,
                        color: _selectedTabIndex == 0 ? Colors.black : Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => selectTab(1),
                    child: Text(
                      'Tugas Dan Kuis',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 1.0,
                        letterSpacing: 0.0,
                        color: _selectedTabIndex == 1 ? Colors.black : Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
         AnimatedPositioned(
          duration: const Duration(milliseconds: 300),
          top: 185,
          left: indicatorLeft,
          child: Container(
            width: 31,
            height: 3,
            decoration: BoxDecoration(
              color: const Color(0x80000000),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        // Bottom Navigation Bar
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            width: 375,
            height: 56,
            decoration: BoxDecoration(
              color: const Color(0xFFB74848),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x40000000),
                  offset: const Offset(0, 4),
                  blurRadius: 4,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Stack(
              children: [
                // Home Icon
                Positioned(
                  top: 8,
                  left: 40,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed('/home'),
                    child: const Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 27.944664001464844,
                    ),
                  ),
                ),
                // Home Text
                Positioned(
                  top: 35,
                  left: 40,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed('/home'),
                    child: Text(
                      'Home',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Colors.white,
                        height: 1.0,
                        letterSpacing: 0,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                // Classes Icon
                Positioned(
                  top: 6,
                  left: 165,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed('/class_dashboard'),
                    child: const Icon(
                      Icons.school,
                      color: Colors.white,
                      size: 30.944664001464844,
                    ),
                  ),
                ),
                // Classes Text
                Positioned(
                  top: 35,
                  left: 158,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed('/class_dashboard'),
                    child: Text(
                      'Kelas Saya',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Colors.white,
                        height: 1.0,
                        letterSpacing: 0,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                // Notifications Icon
                Positioned(
                  top: 6,
                  left: 292,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed('/announcements'),
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 27.944664001464844,
                    ),
                  ),
                ),
                // Notifications Text
                Positioned(
                  top: 35,
                  left: 286,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed('/announcements'),
                    child: Text(
                      'Notifikasi',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Colors.white,
                        height: 1.0,
                        letterSpacing: 0,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MaterialBottomSheetWithTabs extends StatefulWidget {
  final int meetingId;
  const MaterialBottomSheetWithTabs({super.key, required this.meetingId});

  @override
  State<MaterialBottomSheetWithTabs> createState() => _MaterialBottomSheetWithTabsState();
}

class _MaterialBottomSheetWithTabsState extends State<MaterialBottomSheetWithTabs> {
  late int _selectedTabIndex;

  @override
  void initState() {
    super.initState();
    _selectedTabIndex = widget.meetingId == 1 ? 1 : 0;
  }

  void selectTab(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double indicatorLeft = 97; // Lampiran Materi
    if (_selectedTabIndex == 1) indicatorLeft = 218; // Tugas dan Kuis

    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 6,
            left: 133,
            child: Container(
              width: 109,
              height: 6,
              decoration: BoxDecoration(
                color: const Color(0x80C4C4C4),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          Positioned(
            top: 45,
            left: 85,
            child: SizedBox(
              width: 242,
              height: 23,
              child: Text(
                widget.meetingId == 6 ? 'Pengantar User Interface Design' : 'Konsep User Interface Design',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Colors.black,
                  height: 1.0,
                  letterSpacing: 0,
                ),
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 10,
            child: SizedBox(
              width: 55,
              height: 18,
              child: Text(
                'Deskripsi',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Colors.black,
                  height: 1.0,
                  letterSpacing: 0,
                ),
              ),
            ),
          ),
          Positioned(
            top: 105,
            left: 10,
            child: SizedBox(
              width: 355,
              height: 200,
              child: Text(
                widget.meetingId == 5
                    ? 'Konsep dasar User Interface Design akan dipelajari bagaimana membangun sebuah Interaction Design pada antarmuka. Interaction ini sangat penting untuk aplikasi berkomunikasi dengan pengguna. Lalu dipelajari juga poin-poin penting pada interaction design seperti visibility, feedback, limitation, consistency dan affordance. Dan terakhir materi conceptual dan perceptual design interaction akan memberikan gambaran bagaimana bentuk dari Interaction.'
                    : 'Antarmuka yang dibangun harus memperhatikan prinsip-prinsip desain yang ada. Hal ini diharapkan agar antarmuka yang dibangun bukan hanya menarik secara visual tetapi dengan memperhatikan kaidah-kaidah prinsip desain diharapkan akan mendukung pengguna dalam menggunakan produk secara baik. Pelajaran mengenai Pengantar User Interface Design ini sudah pernah diajarkan dalam mata kuliah Implementasi Desain Antarmuka Pengguna tetap pada matakuliah ini akan direview kembali sehingga dapat menjadi bekal saat memasukki materi mengenai User Experience',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.black,
                  height: 1.3,
                  letterSpacing: 0,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          if (widget.meetingId != 1) ...[
            // Lampiran Materi text
            Positioned(
              top: 255,
              left: 73,
              child: GestureDetector(
                onTap: () => selectTab(0),
                child: SizedBox(
                  width: 98,
                  height: 18,
                  child: Text(
                    'Lampiran Materi',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: const Color(0xFF000000),
                      height: 1.0,
                      letterSpacing: 0.0,
                    ),
                  ),
                ),
              ),
            ),
            // Tugas dan Kuis text
            Positioned(
              top: 255,
              left: 197,
              child: GestureDetector(
                onTap: () => selectTab(1),
                child: SizedBox(
                  width: 92,
                  height: 18,
                  child: Text(
                    'Tugas dan Kuis',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: const Color(0xFF000000),
                      height: 1.0,
                      letterSpacing: 0.0,
                    ),
                  ),
                ),
              ),
            ),
            // Animated rectangle
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              top: 273,
              left: indicatorLeft,
              child: Container(
                width: 50,
                height: 3,
                decoration: BoxDecoration(
                  color: const Color(0xFF000000),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ],
          // Content for Lampiran Materi
          if (_selectedTabIndex == 0) ...[
            Positioned(
              top: 299,
              left: 17,
              child: GestureDetector(
                onTap: () async {
                  await launchUrl(Uri.parse('https://lms.telkomuniversity.ac.id/mod/url/view.php?id=1038446'));
                },
                child: Container(
                  width: 340,
                  height: 47,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x40000000),
                        offset: const Offset(1, 1),
                        blurRadius: 5,
                        spreadRadius: 0.5,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 314,
              left: 33,
              child: SizedBox(
                width: 20,
                height: 18,
                child: Image.asset(
                  'assets/images/link.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              top: 318,
              left: 57,
              child: SizedBox(
                width: 133,
                height: 15,
                child: Text(
                  'Zoom Meeting Syncronous',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: const Color(0xFF000000),
                    height: 1.0,
                    letterSpacing: 0.0,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 315,
              left: 328,
              child: SizedBox(
                width: 22,
                height: 16,
                child: Image.asset(
                  'assets/images/green_tick.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // Second rectangle
            Positioned(
              top: 356,
              left: 17,
              child: widget.meetingId == 5
                  ? Container(
                      width: 340,
                      height: 47,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x40000000),
                            offset: const Offset(1, 1),
                            blurRadius: 5,
                            spreadRadius: 0.5,
                          ),
                        ],
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => Scaffold(
                              extendBodyBehindAppBar: true,
                              appBar: const MaterialDetailAppBar(title: 'Pengantar User Interface Design'),
                              body: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/materi1.jpg',
                                      fit: BoxFit.fitWidth,
                                      width: double.infinity,
                                    ),
                                    Image.asset(
                                      'assets/images/materi2.jpg',
                                      fit: BoxFit.fitWidth,
                                      width: double.infinity,
                                    ),
                                    Image.asset(
                                      'assets/images/materi3.jpg',
                                      fit: BoxFit.fitWidth,
                                      width: double.infinity,
                                    ),
                                    Image.asset(
                                      'assets/images/materi4.jpg',
                                      fit: BoxFit.fitWidth,
                                      width: double.infinity,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            transitionsBuilder: (context, animation, secondaryAnimation, child) {
                              const begin = Offset(0.0, 1.0);
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
                      child: Container(
                        width: 340,
                        height: 47,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x40000000),
                              offset: const Offset(1, 1),
                              blurRadius: 5,
                              spreadRadius: 0.5,
                            ),
                          ],
                        ),
                      ),
                    ),
            ),
            Positioned(
              top: 371,
              left: 33,
              child: SizedBox(
                width: 20,
                height: 18,
                child: Image.asset(
                  'assets/images/laporan.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              top: 375,
              left: 57,
              child: SizedBox(
                width: 200,
                height: 15,
                child: Text(
                  widget.meetingId == 5 ? 'Elemen-elemen Antarmuka Pengguna' : 'Pengantar User Interface Design',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: const Color(0xFF000000),
                    height: 1.0,
                    letterSpacing: 0.0,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 372,
              left: 328,
              child: SizedBox(
                width: 22,
                height: 16,
                child: Image.asset(
                  widget.meetingId == 5 ? 'assets/images/green_tick.png' : 'assets/images/grey_tick.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // Third rectangle
            Positioned(
              top: 413,
              left: 17,
              child: Container(
                width: 340,
                height: 47,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x40000000),
                      offset: const Offset(1, 1),
                      blurRadius: 5,
                      spreadRadius: 0.5,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 428,
              left: 33,
              child: SizedBox(
                width: 20,
                height: 18,
                child: Image.asset(
                  'assets/images/laporan.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              top: 432,
              left: 57,
              child: SizedBox(
                width: 200,
                height: 15,
                child: Text(
                  widget.meetingId == 5 ? 'UID Guidelines and Principles' : 'Empat Teori Dasar Antarmuka Pengguna',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: const Color(0xFF000000),
                    height: 1.0,
                    letterSpacing: 0.0,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 429,
              left: 328,
              child: SizedBox(
                width: 22,
                height: 16,
                child: Image.asset(
                  widget.meetingId == 5 ? 'assets/images/green_tick.png' : 'assets/images/grey_tick.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // Fourth rectangle
            Positioned(
              top: 470,
              left: 17,
              child: Container(
                width: 340,
                height: 47,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x40000000),
                      offset: const Offset(1, 1),
                      blurRadius: 5,
                      spreadRadius: 0.5,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 485,
              left: 33,
              child: SizedBox(
                width: 20,
                height: 18,
                child: Image.asset(
                  'assets/images/laporan.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              top: 488,
              left: 57,
              child: SizedBox(
                width: 200,
                height: 15,
                child: Text(
                  'User Profile',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: const Color(0xFF000000),
                    height: 1.0,
                    letterSpacing: 0.0,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 486,
              left: 328,
              child: SizedBox(
                width: 22,
                height: 16,
                child: Image.asset(
                  'assets/images/green_tick.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // Five rectangle
            Positioned(
              top: 528,
              left: 17,
              child: Container(
                width: 340,
                height: 47,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x40000000),
                      offset: const Offset(1, 1),
                      blurRadius: 5,
                      spreadRadius: 0.5,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 540,
              left: 33,
              child: SizedBox(
                width: 20,
                height: 18,
                child: Image.asset(
                  'assets/images/link.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              top: 545,
              left: 57,
              child: SizedBox(
                width: 200,
                height: 15,
                child: Text(
                  'Principles of User Interface DesignURL',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: const Color(0xFF000000),
                    height: 1.0,
                    letterSpacing: 0.0,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 545,
              left: 328,
              child: SizedBox(
                width: 22,
                height: 16,
                child: Image.asset(
                  'assets/images/green_tick.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // Additional rectangles for other meetings
            if (widget.meetingId != 5) ...[
              // Sixth rectangle
              Positioned(
                top: 585,
                left: 17,
                child: GestureDetector(
                  onTap: () async {
                    await launchUrl(Uri.parse('https://example.com/20-prinsip-desain'));
                  },
                  child: Container(
                    width: 340,
                    height: 47,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x40000000),
                          offset: const Offset(1, 1),
                          blurRadius: 5,
                          spreadRadius: 0.5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 597,
                left: 33,
                child: SizedBox(
                  width: 20,
                  height: 18,
                  child: Image.asset(
                    'assets/images/link.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                top: 602,
                left: 57,
                child: SizedBox(
                  width: 200,
                  height: 15,
                  child: Text(
                    '20 Prinsip Desain',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: const Color(0xFF000000),
                      height: 1.0,
                      letterSpacing: 0.0,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 602,
                left: 328,
                child: SizedBox(
                  width: 22,
                  height: 16,
                  child: Image.asset(
                    'assets/images/green_tick.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              // Seventh rectangle
              Positioned(
                top: 642,
                left: 17,
                child: GestureDetector(
                  onTap: () async {
                    await launchUrl(Uri.parse('https://example.com/best-practice-ui-design'));
                  },
                  child: Container(
                    width: 340,
                    height: 47,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x40000000),
                          offset: const Offset(1, 1),
                          blurRadius: 5,
                          spreadRadius: 0.5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 654,
                left: 33,
                child: SizedBox(
                  width: 20,
                  height: 18,
                  child: Image.asset(
                    'assets/images/link.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                top: 659,
                left: 57,
                child: SizedBox(
                  width: 200,
                  height: 15,
                  child: Text(
                    'Best Practice UI Design',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: const Color(0xFF000000),
                      height: 1.0,
                      letterSpacing: 0.0,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 659,
                left: 328,
                child: SizedBox(
                  width: 22,
                  height: 16,
                  child: Image.asset(
                    'assets/images/green_tick.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ],
          // Content for Tugas dan Kuis
          if (_selectedTabIndex == 1) ...[
            if (widget.meetingId == 1) ...[
              // Rectangle for Kuis - Assessment 2
              Positioned(
                top: 314,
                left: 13,
                child: Container(
                  width: 340,
                  height: 102,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x40000000),
                        offset: const Offset(1, 1),
                        blurRadius: 5,
                        spreadRadius: 0.5,
                      ),
                    ],
                  ),
                ),
              ),