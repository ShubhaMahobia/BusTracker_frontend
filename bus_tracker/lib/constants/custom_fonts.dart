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

  static TextStyle bodyText(BuildContext context) {
    return GoogleFonts.montserrat(
      fontWeight: FontWeight.w600,
      color: Colors.black,
      fontSize: 24,
      letterSpacing: 0.2,
    );
  }
}
