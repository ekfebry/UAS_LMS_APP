import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:file_picker/file_picker.dart';
import '../widgets/upload_file_bottom_sheet.dart';

class AssignmentDetailScreen extends StatefulWidget {
  final String title;
  
  const AssignmentDetailScreen({super.key, required this.title});

  @override
  State<AssignmentDetailScreen> createState() => _AssignmentDetailScreenState();
}

class _AssignmentDetailScreenState extends State<AssignmentDetailScreen> {
  List<PlatformFile> uploadedFiles = [];

  IconData getFileIcon(String fileName) {
    String extension = fileName.split('.').last.toLowerCase();
    switch (extension) {
      case 'pdf':
        return Icons.picture_as_pdf;
      case 'doc':
      case 'docx':
        return Icons.description;
      case 'jpg':
      case 'jpeg':
      case 'png':
        return Icons.image;
      default:
        return Icons.insert_drive_file;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFB74848),
        elevation: 0,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          widget.title,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1. Buatlah desain tampilan (antarmuka) pada aplikasi mobile game FPS (First Person Shooter) yang akan menjadi tugas pada mata kuliah Pemrograman Aplikasi Permainan.\n\n2. Desain yang dibuat harus melingkupi seluruh tampilan pada aplikasi/game, dari pertama kali aplikasi dibuka sampai ditutup kembali, serta desain untuk tampilan-tampilan fungsi yang mendukung permainan seperti pop-up, alert, chat, dan lain-lain.\n\n3. Desain bisa dibuat menggunakan aplikasi khusus desain atau secara manual dengan tetap menjunjung kerapihan dan kejelasan setiap elemen dalam desain.\n\n4. Berikan identitas aplikasi game yang dibuat, seperti Nama Game, Genre, dan Platform. Serta berikan penjelasan pada setiap elemen pada desain, seperti gambar, teks, tombol, icon, dan lain-lain.\n\n5. File dikumpulkan dalam format .PDF dengan size maksimal 5MB.\n\n6. Tugas dikumpulkan paling lambat hari Jum\'at, 26 Februari 2021 jam 23:59 WIB (akan tertutup otomatis) dan akan dipresentasikan pada pertemuan selanjutnya via Zoom Meeting.',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300,
                  fontSize: 13,
                  color: const Color(0xFF000000),
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 25),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: const BoxDecoration(
                  color: Color(0xFFEA6262),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Text(
                  'Status Tugas',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      left: 0,
                      child: Text(
                        'Status',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 120,
                      child: SizedBox(
                        width: 200,
                        height: 14,
                        child: Text(
                          'Sudah Mengirim untuk di nilai',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),
              SizedBox(
                height: 50,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Text(
                        'Status Nilai',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 120,
                      child: SizedBox(
                        width: 100,
                        height: 14,
                        child: Text(
                          'Belum Di nilai',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),
              SizedBox(
                height: 20,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Text(
                        'Batas tanggal',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: const Color(0xFF000000),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 120,
                      child: SizedBox(
                        width: 200,
                        height: 14,
                        child: Text(
                          'Jumat, 26 Februari 2021, 23:59 WIB',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              SizedBox(
                height: 50,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Text(
                        'Sisa Waktu',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: const Color(0xFF000000),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 120,
                      child: SizedBox(
                        width: 300,
                        height: 40,
                        child: Text(
                          'Tugas sudah dikirim 4 Hari 6 Jam\nSebelumnya',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              SizedBox(
                height: uploadedFiles.isEmpty ? 20 : uploadedFiles.length * 20.0 + 10,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Text(
                        'File Tugas',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: const Color(0xFF000000),
                        ),
                      ),
                    ),
                    ...uploadedFiles.asMap().entries.map((entry) {
                      int index = entry.key;
                      PlatformFile file = entry.value;
                      return Positioned(
                        top: index * 20.0,
                        left: 120,
                        child: SizedBox(
                          width: 200,
                          child: Row(
                            children: [
                              Icon(
                                getFileIcon(file.name),
                                size: 16,
                                color: const Color(0xFF000000),
                              ),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Text(
                                  file.name,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    color: const Color(0xFF000000),
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () async {
                    final result = await showModalBottomSheet<List<PlatformFile>>(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) => const UploadFileBottomSheet(),
                    );
                    if (result != null) {
                      setState(() {
                        uploadedFiles = result;
                      });
                    }
                  },
                  child: Container(
                    width: 97,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Tambahkan Tugas',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 9,
                          color: const Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}