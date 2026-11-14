import 'dart:ui' show FontFeature;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// "Serene Devotion" design system — see DESIGN.md.
///
/// Forest-green anchor, warm-gold accents, parchment / vegetal-night surfaces,
/// Inter typography. Both themes share one builder so the two modes cannot
/// drift apart.
class AppTheme {
  AppTheme._();

  // Brand anchors.
  static const Color primary = Color(0xFF1B5E20); // Forest green
  static const Color accentGold = Color(0xFFC9A227); // Milestones / streaks
  static const Color onGold = Color(0xFF241A00); // Legible text on gold

  // Light surfaces.
  static const Color lightBackground = Color(0xFFF7F9F6);
  static const Color lightCard = Color(0xFFFFFFFF);
  static const Color lightBorder = Color(0xFFEDF2EC);
  static const Color lightPrimaryText = Color(0xFF191C19);
  static const Color lightSecondaryText = Color(0xFF414942);
  static const Color lightNavIndicator = Color(0xFFE8F5E9);

  // Dark surfaces.
  static const Color darkBackground = Color(0xFF0E1A12);
  static const Color darkCard = Color(0xFF142319);
  static const Color darkBorder = Color(0xFF1E3526);
  static const Color darkPrimaryText = Color(0xFFE1E3DE);
  static const Color darkSecondaryText = Color(0xFF8C9389);
  static const Color darkNavIndicator = Color(0xFF1E3526);

  // Spacing / shape tokens.
  static const EdgeInsets cardPadding = EdgeInsets.all(16);
  static const double bigCardRadius = 16;
  static const double controlRadius = 8;

  static ThemeData get light => _theme(
        brightness: Brightness.light,
        background: lightBackground,
        card: lightCard,
        border: lightBorder,
        primaryText: lightPrimaryText,
        secondaryText: lightSecondaryText,
        navIndicator: lightNavIndicator,
      );

  static ThemeData get dark => _theme(
        brightness: Brightness.dark,
        background: darkBackground,
        card: darkCard,
        border: darkBorder,
        primaryText: darkPrimaryText,
        secondaryText: darkSecondaryText,
        navIndicator: darkNavIndicator,
      );

  static ThemeData _theme({
    required Brightness brightness,
    required Color background,
    required Color card,
    required Color border,
    required Color primaryText,
    required Color secondaryText,
    required Color navIndicator,
  }) {
    final isDark = brightness == Brightness.dark;

    final colorScheme = ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: Colors.white,
      secondary: accentGold,
      onSecondary: onGold,
      error: const Color(0xFFBA1A1A),
      onError: Colors.white,
      surface: background,
      onSurface: primaryText,
      onSurfaceVariant: secondaryText,
      surfaceContainerHighest: card,
      outline: border,
      outlineVariant: border,
    );

    // Inter is the single family for the whole app; tabular figures on
    // counters keep digits from jittering while incrementing.
    final baseTextTheme = GoogleFonts.interTextTheme(
      ThemeData(brightness: brightness).textTheme,
    );

    final textTheme = baseTextTheme.copyWith(
      // display-counter 72 / 300, tabular figures.
      displayLarge: GoogleFonts.inter(
        fontSize: 72,
        fontWeight: FontWeight.w300,
        height: 80 / 72,
        letterSpacing: -0.04 * 72,
        color: primaryText,
        fontFeatures: const [FontFeature.tabularFigures()],
      ),
      // Material 3 uses headlineMedium for app-bar titles: 24 / 600.
      headlineMedium: GoogleFonts.inter(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 32 / 24,
        letterSpacing: -0.24,
        color: primaryText,
      ),
      titleMedium: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 24 / 16,
        letterSpacing: 0.16,
        color: primaryText,
      ),
      bodyLarge: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
        color: primaryText,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
        color: primaryText,
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 20 / 14,
        color: secondaryText,
      ),
      labelLarge: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 20 / 14,
        letterSpacing: 0.14,
        color: primaryText,
      ),
      labelMedium: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 16 / 12,
        letterSpacing: 0.48,
        color: secondaryText,
      ),
      labelSmall: GoogleFonts.inter(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        height: 16 / 11,
        letterSpacing: 0.55,
        color: secondaryText,
      ),
    );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: background,
      canvasColor: background,
      dividerColor: border,
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: background,
        foregroundColor: primaryText,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleTextStyle: textTheme.headlineMedium,
      ),
      cardTheme: CardThemeData(
        color: card,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        margin: EdgeInsets.zero,
        // DESIGN.md: Level 1 cards carry a soft ambient shadow in light mode,
        // a 1px border and no shadow in dark mode.
        shadowColor: isDark ? Colors.transparent : const Color(0x0D1B5E20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(bigCardRadius),
          side: BorderSide(color: border, width: 1),
        ),
      ),
      cardColor: card,
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: background,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        height: 80,
        indicatorColor: navIndicator,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        iconTheme: WidgetStateProperty.resolveWith(
          (states) => IconThemeData(
            size: 24,
            color:
                states.contains(WidgetState.selected) ? primary : secondaryText,
          ),
        ),
        labelTextStyle: WidgetStateProperty.resolveWith(
          (states) => textTheme.labelSmall!.copyWith(
            fontWeight: states.contains(WidgetState.selected)
                ? FontWeight.w700
                : FontWeight.w500,
            color: states.contains(WidgetState.selected)
                ? primaryText
                : secondaryText,
          ),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: Colors.white,
          minimumSize: const Size(0, 48),
          textStyle: textTheme.labelLarge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(controlRadius),
          ),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: isDark ? card : const Color(0xFF1B5E20),
        contentTextStyle: textTheme.bodySmall!.copyWith(
          color: isDark ? primaryText : Colors.white,
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(controlRadius),
        ),
      ),
    );
  }
}
