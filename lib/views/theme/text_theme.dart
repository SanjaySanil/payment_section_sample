import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:startup_projects/consts/color_constants.dart';

class TTextTheme {
  static TextTheme textTheme = TextTheme(
    titleLarge: googleFonts(
      18,
      FontWeight.w600,
      ColorConst.white,
    ),
    headlineLarge: googleFonts(
      16,
      FontWeight.w600,
      ColorConst.black,
    ),
    headlineMedium: googleFonts(
      14,
      FontWeight.bold,
      ColorConst.black,
    ),
    headlineSmall: googleFonts(
      12,
      FontWeight.bold,
      ColorConst.black,
    ),
    //sub heading dark color
    bodyLarge: googleFonts(
      16,
      FontWeight.normal,
      ColorConst.textMediumColor,
    ),
    //sub heading light color
    bodyMedium: googleFonts(
      16,
      FontWeight.normal,
      ColorConst.white,
    ),
    //sub heading medium color
    titleMedium:googleFonts(
      16,
      FontWeight.w500,
      ColorConst.black,
    ),
  );

  static TextStyle googleFonts(
      double fontSize, FontWeight fontWeight, Color color) {
    return GoogleFonts.poppins(
        fontSize: fontSize, fontWeight: fontWeight, color: color);
  }
}
