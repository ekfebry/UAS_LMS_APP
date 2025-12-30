import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnnouncementDetailScreen extends StatelessWidget {
  const AnnouncementDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Pengumuman',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          // Title Text
          Positioned(
            top: 25, // 131 - 80
            left: 25,
            child: SizedBox(
              width: 299,
              height: 18,
              child: Text(
                'Maintenance Pra UAS Semester Genap 2020/2021',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  height: 1.0,
                  letterSpacing: 0.0,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          // User Image
          Positioned(
            top: 55, // 166 - 80
            left: 28,
            child: Image.asset(
              'assets/images/user.png',
              width: 23,
              height: 22,
            ),
          ),
          // Date Text
          Positioned(
            top: 63, // 170 - 80
            left: 58,
            child: SizedBox(
              width: 179,
              height: 14,
              child: Text(
                'By Admin Celoe - Rabu, 2 Juni 2021, 10:45',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300,
                  fontSize: 9,
                  height: 1.0,
                  letterSpacing: 0.0,
                  color: const Color(0xBF000000), // 75% opacity black
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          // Maintenance Image
          Positioned(
            top: 95, // 198 - 80
            left: 28,
            child: Container(
              width: 319,
              height: 185,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/maintenance.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Subtitle Text
          Positioned(
            top: 300, // 403 - 80
            left: 134,
            child: SizedBox(
              width: 107,
              height: 18,
              child: Text(
                'Maintenance LMS',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  height: 1.0,
                  letterSpacing: 0.0,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          // Description Text
          Positioned(
            top: 340, // 442 - 80
            left: 25,
            child: SizedBox(
              width: 341,
              height: 238,
              child: Text(
                'Diinformasikan kepada seluruh pengguna LMS, kami\ndari tim CeLOE akan melakukan maintenance pada tanggal 12\nJuni 2021, untuk meningkatkan layanan server dalam mengh-\nadapi ujian akhir semester (UAS).\n\nDengan adanya kegiatan maintenance tersebut maka\nsitus LMS (Ims.telkomuniversity.ac.id) tidak dapat diakses\nmulai pukul 00.00 s/d 06.00 WIB.\n\nDemikian informasi ini kami sampaikan, mohon maaf\natas ketidaknyamanannya.\n\nHormat Kami,\nCeLOE Telkom University',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300,
                  fontSize: 11,
                  height: 1.0,
                  letterSpacing: 0.0,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
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