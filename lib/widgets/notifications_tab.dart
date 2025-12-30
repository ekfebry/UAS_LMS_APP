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

}