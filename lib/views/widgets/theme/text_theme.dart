import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:startup_projects/consts/color_constants.dart';

class TTextTheme {
  static TextTheme textTheme = TextTheme(
    titleLarge: googleFontsMainHeadings(
      18,
      FontWeight.w500,
      ColorConst.white,
    ),
    headlineLarge: googleFontsMainHeadings(
      16,
      FontWeight.w500,
      ColorConst.black,
    ),
    headlineMedium:googleFontsMainHeadings(
      14,
      FontWeight.bold,
      ColorConst.black,
    ),
    headlineSmall:googleFontsMainHeadings(
      12,
      FontWeight.bold,
      ColorConst.black,
    ),
    bodyLarge:googleFontsSubHeadings(16,FontWeight.normal,ColorConst.textMediumColor)
  );

  static TextStyle googleFontsMainHeadings(
      double fontSize, FontWeight fontWeight, Color color) {
    return GoogleFonts.poppins(
        fontSize: fontSize, fontWeight: fontWeight, color: color);
  }
  static TextStyle googleFontsSubHeadings( double fontSize, FontWeight fontWeight, Color color){
    return  GoogleFonts.poppins(
        fontSize: fontSize, fontWeight: fontWeight, color: color);
  }
}
