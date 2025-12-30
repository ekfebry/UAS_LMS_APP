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
            const SizedBox(height: 5),
            SizedBox(
              width: 250,
              height: 162,
              child: Text(
                'First access to site Monday, 7 September 2020, 9:27 AM  (288 days 12 hours)\n\nLast access to site Tuesday, 22 June 2021, 9:44 PM  (now)',
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
          ],
        );
        case 1:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 64,
                  height: 35,
                  decoration: BoxDecoration(
                    color: const Color(0xFF83B8DA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const SizedBox(width: 24),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                        child: Text(
                          'BAHASA INGGRIS: BUSINESS AND SCIENTIFIC D4SM-41-GAB1 [ARS]',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            height: 1.0,
                            letterSpacing: 0.0,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 2),
                      SizedBox(
                        height: 14,
                        child: Text(
                          'Tanggal Mulai Monday, 8 February 2021',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 9,
                            height: 1.0,
                            letterSpacing: 0.0,
                            color: const Color(0x80000000),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 64,
                  height: 35,
                  decoration: BoxDecoration(
                    color: const Color(0xFF83B8DA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const SizedBox(width: 24),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                        child: Text(
                          'DESAIN ANTARMUKA & PENGALAMAN PENGGUNA\nD4SM-42-03 [ADY]',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            height: 1.0,
                            letterSpacing: 0.0,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 2),
                      SizedBox(
                        height: 14,
                        child: Text(
                          'Tanggal Mulai Monday, 8 February 2021',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 9,
                            height: 1.0,
                            letterSpacing: 0.0,
                            color: const Color(0x80000000),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
             const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 64,
                  height: 35,
                  decoration: BoxDecoration(
                    color: const Color(0xFF83B8DA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const SizedBox(width: 24),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                        child: Text(
                          'KEWARGANEGARA\nD4SM-41-GAB1 [BBO]. JUMAT 2',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            height: 1.0,
                            letterSpacing: 0.0,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 2),
                      SizedBox(
                        height: 14,
                        child: Text(
                          'Tanggal Mulai Monday, 8 February 2021',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 9,
                            height: 1.0,
                            letterSpacing: 0.0,
                            color: const Color(0x80000000),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 64,
                  height: 35,
                  decoration: BoxDecoration(
                    color: const Color(0xFF83B8DA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const SizedBox(width: 24),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                        child: Text(
                          'OLAH RAGA D3TT-44-02 [EYR]',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            height: 1.0,
                            letterSpacing: 0.0,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 2),
                      SizedBox(
                        height: 14,
                        child: Text(
                          'Tanggal Mulai Monday, 8 February 2021',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 9,
                            height: 1.0,
                            letterSpacing: 0.0,
                            color: const Color(0x80000000),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 64,
                  height: 35,
                  decoration: BoxDecoration(
                    color: const Color(0xFF83B8DA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const SizedBox(width: 24),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                        child: Text(
                          'PEMROGRAMAN MULTIMEDIA INTERAKTIF\nD4SM-43-04 [TPR]',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            height: 1.0,
                            letterSpacing: 0.0,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 2),
                      SizedBox(
                        height: 14,
                        child: Text(
                          'Tanggal Mulai Monday, 8 February 2021',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 9,
                            height: 1.0,
                            letterSpacing: 0.0,
                            color: const Color(0x80000000),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 64,
                  height: 35,
                  decoration: BoxDecoration(
                    color: const Color(0xFF83B8DA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const SizedBox(width: 24),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                        child: Text(
                          'PEMROGRAMAN PERANGKAT BERGERAK MULTIMEDIA\nD4SM-41-GAB1 [APJ]',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            height: 1.0,
                            letterSpacing: 0.0,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 2),
                      SizedBox(
                        height: 14,
                        child: Text(
                          'Tanggal Mulai Monday, 8 February 2021',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 9,
                            height: 1.0,
                            letterSpacing: 0.0,
                            color: const Color(0x80000000),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 64,
                  height: 35,
                  decoration: BoxDecoration(
                    color: const Color(0xFF83B8DA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const SizedBox(width: 24),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                        child: Text(
                          'SISTEM OPERASI D4SM-44-02 [DDS]',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            height: 1.0,
                            letterSpacing: 0.0,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 2),
                      SizedBox(
                        height: 14,
                        child: Text(
                          'Tanggal Mulai Monday, 8 February 2021',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 9,
                            height: 1.0,
                            letterSpacing: 0.0,
                            color: const Color(0x80000000),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
        case 2:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            SizedBox(
              width: 85,
              height: 17,
              child: Text(
                'Nama Pertama',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  height: 1.0,
                  letterSpacing: 0.0,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            const SizedBox(height: 7),
            Container(
              width: 280,
              height: 42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: TextField(
                controller: _firstNameController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  color: Colors.black,
                ),
              ),
            ),
             const SizedBox(height: 18),
            SizedBox(
              width: 81,
              height: 17,
              child: Text(
                'Nama Terakhir',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  height: 1.0,
                  letterSpacing: 0.0,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            const SizedBox(height: 7),
            Container(
              width: 280,
              height: 42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: TextField(
                controller: _lastNameController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 13),
            SizedBox(
              width: 84,
              height: 17,
              child: Text(
                'E-mail Address',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  height: 1.0,
                  letterSpacing: 0.0,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            const SizedBox(height: 7),
            Container(
              width: 280,
              height: 42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 7),
            SizedBox(
              width: 45,
              height: 18,
              child: Text(
                'Negara',
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
            const SizedBox(height: 7),
            Container(
              width: 280,
              height: 42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: TextField(
                controller: _countryController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 7),
            SizedBox(
              width: 54,
              height: 18,
              child: Text(
                'Deskripsi',
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
            const SizedBox(height: 7),
            Container(
              width: 280,
              height: 106,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: TextField(
                controller: _descriptionController,
                maxLines: null,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 23),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  // Save logic here
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Profile saved')),
                  );
                },
                child: Container(
                  width: 97,
                  height: 42,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF7F7F7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Simpan',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 9,
                        height: 1.0,
                        letterSpacing: 0.0,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
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
    double indicatorLeft = 77; 
    if (_selectedTabIndex == 1) indicatorLeft = 177; 
    if (_selectedTabIndex == 2) indicatorLeft = 277;

    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFFB74848),
            elevation: 0,
            toolbarHeight: 245,
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
                  top: 70,
                  left: 112,
                  child: Image.asset(
                    'assets/images/eka.png',
                    width: 151,
                    height: 100,
                  ),
                ),
                Positioned(
                  top: 190,
                  left: 0,
                  right: 0,
                  child: Text(
                    'EKA FEBRIYANTI KHOLIFAH',
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
            child: const ProfileTab(),
          ),
        ),
        Positioned(
          top: 235, // Position below the app bar
          left: 16,
          right: 16,
          child: Material(
            elevation: 12,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 80,
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
                      'About Me',
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
                      'Kelas',
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
                  GestureDetector(
                    onTap: () => selectTab(2),
                    child: Text(
                      'Edit Profile',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 1.0,
                        letterSpacing: 0.0,
                        color: _selectedTabIndex == 2 ? Colors.black : Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 285,
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
        Positioned(
          top: 340,
          left: 0,
          right: 0,
          bottom: 56,
          child: Material(
            color: Colors.transparent,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: getContent(_selectedTabIndex),
              ),
            ),
          ),
        ),
        if (_selectedTabIndex == 0) Positioned(
          top: 700,
          left: 261,
          child: GestureDetector(
            onTap: () => Navigator.of(context).pushReplacementNamed('/login'),
            child: Container(
              width: 104,
              height: 38,
              decoration: BoxDecoration(
                color: const Color(0xFFAF1116),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 9,
                    left: 10,
                    child: const Icon(
                      Icons.logout,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  Positioned(
                    top: 13,
                    left: 42,
                    child: SizedBox(
                      width: 54,
                      height: 21,
                      child: Text(
                        'Log Out',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          height: 1.0,
                          letterSpacing: 0.0,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),