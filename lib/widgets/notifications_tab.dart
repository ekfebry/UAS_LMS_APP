import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsTab extends StatelessWidget {
  final VoidCallback onBack;

  const NotificationsTab({super.key, required this.onBack});

@override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // White AppBar-like container
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 100, // Approximate height for the bar
            color: Colors.white,
          ),
        ),
        // Back Icon
        Positioned(
          top: 40,
          left: 6,
          child: GestureDetector(
            onTap: onBack,
            child: const Icon(Icons.arrow_back, color: Colors.black, size: 30),
          ),
        ),
        // Notifikasi Text
        Positioned(
          top: 60,
          left: 146,
          child: SizedBox(
            width: 84,
            height: 27,
            child: Text(
              'Notifikasi',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                height: 1.0,
                letterSpacing: 0.0,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),

}