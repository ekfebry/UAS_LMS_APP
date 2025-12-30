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