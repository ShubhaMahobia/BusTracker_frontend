import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle {
  static TextStyle appBarTitle(BuildContext context) {
    return GoogleFonts.montserrat(
      fontWeight: FontWeight.w800,
      color: Colors.white,
      fontSize: 24,
      letterSpacing: 0.2,
    );
  }

  static TextStyle t1(BuildContext context) {
    return GoogleFonts.montserrat(
      fontWeight: FontWeight.w600,
      color: Colors.black,
      fontSize: 24,
      letterSpacing: 0.2,
    );
  }

  static TextStyle t2(BuildContext context) {
    return GoogleFonts.montserrat(
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontSize: 18,
      letterSpacing: 0.5,
    );
  }

  static TextStyle t3(BuildContext context) {
    return GoogleFonts.montserrat(
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontSize: 14,
      letterSpacing: 0.5,
    );
  }

  static TextStyle buttonText1(BuildContext context) {
    return GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w900,
      color: Colors.blue,
      fontSize: 14,
      letterSpacing: 0.5,
    );
  }
}
