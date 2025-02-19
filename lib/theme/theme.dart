import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Define color palette
  static const Color primaryBlue = Color(0xFF42A5F5); // Primary Blue for buttons, highlights
  static const Color headingBlue = Color(0xFF1565C0); // Blue for headings, active states, icons
  static const Color secondaryGrey = Color(0xFF757575); // Grey for secondary text, icon labels
  static const Color bodyTextDarkGrey = Color(0xFF333333); // Dark grey for body text
  static const Color whiteTextOnBlue = Color(0xFFFFFFFF); // White text for blue background

  // Define TextTheme using Outfit font
  static TextTheme textTheme = TextTheme(
    displayLarge: GoogleFonts.outfit(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: headingBlue,
    ), // For main headings
    headlineSmall: GoogleFonts.outfit(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: bodyTextDarkGrey,
    ), // For smaller headings
    bodyLarge: GoogleFonts.outfit(
      fontSize: 16.0,
      color: bodyTextDarkGrey,
    ), // For general body text
    bodyMedium: GoogleFonts.outfit(
      fontSize: 14.0,
      color: secondaryGrey,
    ), // For secondary text
    labelLarge: GoogleFonts.outfit(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      color: whiteTextOnBlue,
    ), // For buttons
  );

  // Define ThemeData
  static ThemeData themeData = ThemeData(
    primaryColor: primaryBlue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: headingBlue, // Use the darkest color for the AppBar background
      foregroundColor: Colors.white, // Text/icon color in AppBar
      elevation: 2, // Add a slight shadow for the AppBar
      centerTitle: true, // Center the title by default
      titleTextStyle: GoogleFonts.outfit(
        fontSize: 20.0, // Consistent AppBar title font size
        fontWeight: FontWeight.bold, // Ensure bold AppBar text
        color: Colors.white, // AppBar text color
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blue,
    ).copyWith(
      secondary: headingBlue, // For FABs, toggles, etc.
    ),
    textTheme: textTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryBlue,
        foregroundColor: Colors.white, // Button text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        textStyle: GoogleFonts.outfit(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: primaryBlue),
        foregroundColor: primaryBlue,
        textStyle: GoogleFonts.outfit(
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    iconTheme: const IconThemeData(
      color: headingBlue, // Icon color
      size: 24.0,
    ),
  );
}
