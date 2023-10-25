// ignore_for_file: file_names

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle {
  static TextStyle text1(BuildContext context) {
    return GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w800,
      color: Colors.lightBlue,
      fontSize: 24,
      letterSpacing: 0.2,
    );
  }
}
