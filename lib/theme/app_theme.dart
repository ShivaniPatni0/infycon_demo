import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Color Palette — Deep Violet + Warm Ivory + Electric Cyan accent
  static const Color background = Color(0xFF0F0E17);
  static const Color surface = Color(0xFF1A1829);
  static const Color surfaceElevated = Color(0xFF231F35);
  static const Color cardBorder = Color(0xFF2E2A42);
  
  static const Color primary = Color(0xFF7C6FCD);       // Soft violet
  static const Color primaryLight = Color(0xFFA99BE0);  // Lavender
  static const Color accent = Color(0xFF00E5C9);         // Electric cyan
  static const Color accentWarm = Color(0xFFFF6B6B);    // Coral
  static const Color accentAmber = Color(0xFFFFBF47);   // Amber
  
  static const Color textPrimary = Color(0xFFF5F0FF);
  static const Color textSecondary = Color(0xFF9B93C0);
  static const Color textMuted = Color(0xFF5A5478);
  
  static const Color green = Color(0xFF4ECCA3);
  static const Color red = Color(0xFFFF6B6B);

  // Gradients
  static const LinearGradient heroGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF3D2C8D), Color(0xFF7C4DFF), Color(0xFF00BCD4)],
    stops: [0.0, 0.5, 1.0],
  );

  static const LinearGradient cardGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF1E1A2E), Color(0xFF252040)],
  );

  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: background,
      colorScheme: const ColorScheme.dark(
        background: background,
        surface: surface,
        primary: primary,
        secondary: accent,
      ),
      textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme).copyWith(
        displayLarge: GoogleFonts.inter(
          fontSize: 40,
          fontWeight: FontWeight.w800,
          color: textPrimary,
          letterSpacing: -1.5,
        ),
        displayMedium: GoogleFonts.inter(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          color: textPrimary,
          letterSpacing: -1.0,
        ),
        titleLarge: GoogleFonts.inter(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: textPrimary,
        ),
        titleMedium: GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: textPrimary,
        ),
        bodyLarge: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: textSecondary,
        ),
        bodySmall: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: textMuted,
        ),
      ),
    );
  }
}
