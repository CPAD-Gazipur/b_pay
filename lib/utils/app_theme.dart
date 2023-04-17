import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get getLightTheme {
    return ThemeData(
      primarySwatch: mainAppColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        backgroundColor: Colors.transparent,
        selectedIconTheme: const IconThemeData(
          size: 18,
        ),
        unselectedIconTheme: const IconThemeData(
          size: 18,
        ),
        unselectedItemColor: Colors.white54,
        selectedItemColor: Colors.white,
        selectedLabelStyle: GoogleFonts.poppins(
          fontSize: 12,
          height: 1.6,
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 12,
          height: 1.6,
          fontWeight: FontWeight.w400,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        isDense: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
      unselectedWidgetColor: const Color(0x50333333),
      shadowColor: const Color(0xFFe6e6e6).withOpacity(0.5),
      backgroundColor: Colors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: 'Poppins',
      textTheme: TextTheme(
        headline1: GoogleFonts.inter(
          color: const Color(0xFF111111),
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        headline2: GoogleFonts.inter(
          color: const Color(0xFF111111),
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        headline3: GoogleFonts.inter(
          color: const Color(0xFF111111),
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        headline4: GoogleFonts.inter(
          color: const Color(0xFF111111),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        headline5: GoogleFonts.inter(
          color: const Color(0xFF111111),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        headline6: GoogleFonts.inter(
          color: Colors.grey.shade600,
          fontSize: 10.5,
          fontWeight: FontWeight.w400,
        ),
        bodyText1: GoogleFonts.inter(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        bodyText2: GoogleFonts.inter(
          color: const Color(0xFF111111),
          fontSize: 9,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

MaterialColor mainAppColor = const MaterialColor(
  0xFF15803D,
  <int, Color>{
    50: Color(0xFF15803D),
    100: Color(0xFF15803D),
    200: Color(0xFF15803D),
    300: Color(0xFF15803D),
    400: Color(0xFF15803D),
    500: Color(0xFF15803D),
    600: Color(0xFF15803D),
    700: Color(0xFF15803D),
    800: Color(0xFF15803D),
    900: Color(0xFF15803D),
  },
);
