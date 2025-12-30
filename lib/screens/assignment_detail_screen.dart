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