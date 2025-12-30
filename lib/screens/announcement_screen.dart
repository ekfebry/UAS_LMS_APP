import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});

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
          // First Announcement
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            height: 50,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/announcement_detail'),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 21,
                    child: Image.asset(
                      'assets/images/pengumuman.png',
                      width: 27,
                      height: 26,
                    ),
                  ),