import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme(BuildContext context) {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color(0xFF0A0E21),
    primaryColor: const Color(0xFF0A0E21),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: const Color(0xFF0A0E21),
      iconTheme: IconThemeData(color: Colors.indigo[400]),
    ),
    textTheme: TextTheme(
      caption: GoogleFonts.poppins(
        color: const Color(0xFF0A0E21),
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      headline1: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 21,
        fontWeight: FontWeight.w800,
      ),
      headline2: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 15.5,
        fontWeight: FontWeight.w600,
      ),
      headline3: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 14.6,
        fontWeight: FontWeight.w400,
      ),
      headline4: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 13.8,
        fontWeight: FontWeight.w600,
      ),
      headline5: GoogleFonts.poppins(
        color: Colors.lightGreen,
        fontSize: 18,
        fontWeight: FontWeight.w800,
      ),
    ),
  );
}
