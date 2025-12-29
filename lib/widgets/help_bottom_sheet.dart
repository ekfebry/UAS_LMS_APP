import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpBottomSheet extends StatelessWidget {
  const HelpBottomSheet({super.key});

  @override
  State<HelpBottomSheet> createState() => _HelpBottomSheetState();
}

class _HelpBottomSheetState extends State<HelpBottomSheet> {
  bool isIndonesian = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 348,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          // Drag handle
          Positioned(
            top: 4,
            left: 133,
            child: GestureDetector(
              onVerticalDragEnd: (details) {
                if (details.primaryVelocity != null && details.primaryVelocity! > 0) {
                  Navigator.pop(context);
                }
              },
              child: Container(
                width: 109,
                height: 6,
                decoration: BoxDecoration(
                  color: const Color(0xFFC4C4C4).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
          // ID Flag
          Positioned(
            top: 20,
            left: 123,
            child: GestureDetector(
              onTap: () => setState(() => isIndonesian = true),
              child: Image.asset('assets/images/ID.png', width: 35, height: 40),
            ),
          ),
          // ID Text
          Positioned(
            top: 60,
            left: 135,
            child: Text(
              'ID',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 11,
                color: Colors.black,
              ),
            ),
          ),
          // EN Flag
          Positioned(
            top: 20,
            left: 215,
            child: GestureDetector(
              onTap: () => setState(() => isIndonesian = false),
              child: Image.asset('assets/images/EN.png', width: 35, height: 40),
            ),
          ),
          // EN Text
          Positioned(
            top: 60,
            left: 229,
            child: Text(
              'EN',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 11,
                color: Colors.black,
              ),
            ),
          ),
          // Selection indicator (rectangle 55)
          Positioned(
            top: 75,
            left: isIndonesian ? 130 : 226,
            child: Container(
              width: 20,
              height: 4,
              color: const Color(0xFF000000).withOpacity(0.5),
            ),
          ),
          // Content Text
          Positioned(
            top: 90,
            left: isIndonesian ? 6 : 5,
            child: SizedBox(
              width: isIndonesian ? 362 : 365,
              height: 240,
              child: Text(
                isIndonesian
                    ? 'Akses hanya untuk Dosen dan Mahasiswa Telkom University.\n\nLogin menggunakan Akun Microsoft Office 365 \ndengan mengikuti petunjuk berikut : \n\nUsername (Akun iGracias) ditambahkan "@365.telkomuniversity.ac.id"\nPassword (Akun iGracias) pada kolom Password.\n\nKegagalan yang terjadi pada Autentikasi disebabkan oleh \nAnda belum mengubah Password Anda menjadi  "Strong Password". \nPastikan Anda telah melakukan perubahan Password di iGracias.\n\nInformasi lebih lanjut dapat menghubungi Layanan CeLOE Helpdesk di : \n\nMail : infoceloe@telkomuniversity.ac.id\nwhatsapp : +62 821-1666-3563'
                    : 'Access restricted only for Lecturer and Student of Telkom University\n\nLogin only using your Microsoft Office 365 Account \nby following these format :\n\nUsername (iGracias Account) followed with "@365.telkomuniversity.ac.id"\nPassword (SSO / iGracias Account) on Password Field.\n\nFailure upon Authentication could be possibly you \nhave not yet change your password into "Strong Password". \nMake sure to change your Password only in iGracias.\n\nFor further Information, please contact CeLOE Service Helpdesk :\n\nmail : infoceloe@telkomuniversity.ac.id\nwhatsapp : +62 821-1666-3563',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}