import 'package:flutter/material.dart';
import 'package: google_fonts/google_fonts.dart';
import '../widgets/profile_tab.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
   State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedTabIndex = 0;
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  Widget getContent(int index) {
    switch (index) {
      case 0:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 130,
              height: 20,
              child: Text(
                'Informasi User',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  height: 1.0,
                  letterSpacing: 0.0,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: 250,
              height: 162,
              child: Text(
                'Email address\nekfbryntikh@uim.ac.id\n\nProgram Studi\nS1 Teknik Informatika\n\nFakultas\nTEKNIK',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 1.0,
                  letterSpacing: 0.0,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            const SizedBox(height: 0),
            SizedBox(
              width: 130,
              height: 20,
              child: Text(
                'Aktivitas Login',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  height: 1.0,
                  letterSpacing: 0.0,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),