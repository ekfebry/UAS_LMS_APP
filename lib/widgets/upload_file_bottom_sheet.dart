import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:file_picker/file_picker.dart';

class UploadFileBottomSheet extends StatefulWidget {
  const UploadFileBottomSheet({super.key});

  @override
  State<UploadFileBottomSheet> createState() => _UploadFileBottomSheetState();
}

class _UploadFileBottomSheetState extends State<UploadFileBottomSheet> {
  List<PlatformFile> pickedFiles = [];

  Future<void> pickFiles() async {
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      allowedExtensions: ['pdf', 'jpg', 'png', 'doc', 'docx'],
      type: FileType.custom,
    );

    if (result != null) {
      if (result.files.length > 20) return; // Limit jumlah file
      setState(() {
        pickedFiles = result.files;
      });
    }
  }

   @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          AppBar(
            backgroundColor: const Color(0xFFB74848),
            elevation: 0,
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Text(
              'Upload File',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
          ),

          const SizedBox(height: 12),

          Text(
            'Maksimum File 5MB , Maksimum Jumlah File 20',
            style: GoogleFonts.poppins(fontSize: 12),
          ),

          const SizedBox(height: 20),

          // AREA PREVIEW / DROP
          Container(
            width: double.infinity,
            height: 180,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black87),
            ),
            child: pickedFiles.isEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.cloud_upload,
                          size: 80, color: Colors.blue),
                      Text(
                        'File yang akan di upload akan tampil di sini',
                        style: GoogleFonts.poppins(fontSize: 12),
                      )
                    ],
                  )
                : ListView.builder(
                    itemCount: pickedFiles.length,
                    itemBuilder: (context, index) => ListTile(
                      leading: const Icon(Icons.insert_drive_file),
                      title: Text(pickedFiles[index].name),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          setState(() => pickedFiles.removeAt(index));
                        },
                      ),
                    ),
                  ),
          ),
