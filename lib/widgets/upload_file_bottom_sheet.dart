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