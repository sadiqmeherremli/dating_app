import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class TypographyTheme {
  static ThemeData appThemeData = ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.bgColor,
    elevation: 0),
    scaffoldBackgroundColor: AppColors.bgColor, 
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
      textTheme: TextTheme(
        displaySmall: GoogleFonts.montserrat(
            fontSize: 14,
            color: AppColors.regularTextColor,
            fontWeight: FontWeight.w400),
        displayMedium: GoogleFonts.montserrat(
            fontSize: 16,
            color: AppColors.regularTextColor,
            fontWeight: FontWeight.w600),
        displayLarge: GoogleFonts.montserrat(
          fontSize: 18,
          color: AppColors.colorBlack,
          fontWeight: FontWeight.w700,
        ),
      ));
}
