import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColors {
  // ── Sky Blues ───────────────────────────────────────────────────
  static const skyDeep = Color(0xFF0A4B6E); // أزرق سماوي عميق
  static const skyMid = Color(0xFF1275A0); // سماوي متوسط
  static const skyBright = Color(0xFF2CA8D5); // سماوي مضيء
  static const skyLight = Color(0xFF62C8E8); // سماوي فاتح — على الداكن
  static const skyMist = Color(0xFFB8E4F4); // ضباب سماوي — خافت جداً

  // ── Night Blues (Dark mode) ─────────────────────────────────────
  static const nightAbyss = Color(0xFF060D18); // الخلفية الليلية
  static const nightDeep = Color(0xFF0A1628); // كروت داكنة
  static const nightMid = Color(0xFF102035); // حدود داكنة
  static const nightSteel = Color(0xFF1A3050); // أسطح خافتة

  // ── Light Backgrounds ───────────────────────────────────────────
  static const dawnWhite = Color(0xFFF0F8FF); // خلفية رئيسية — أبيض فجري
  static const cloudWhite = Color(0xFFF8FCFF); // كروت — أبيض سحابي
  static const mistBlue = Color(0xFFDEEEF8); // حدود وفواصل
  static const silverBlue = Color(0xFF8AAFC4); // نص ثانوي

  // ── Gold accent ─────────────────────────────────────────────────
  static const gold = Color(0xFFCFA84C); // ذهبي أصيل — عنصر مميز
  static const goldSoft = Color(0xFFE8C86A); // ذهبي ناعم — على الداكن

  // ── Text ────────────────────────────────────────────────────────
  static const inkNavy = Color(0xFF0C1E35); // نص رئيسي light
  static const pearlWhite = Color(0xFFEBF4FA); // نص رئيسي dark
}

// ─── Light Theme ──────────────────────────────────────────────────────────────

final ThemeData lightTheme = ThemeData.light(useMaterial3: false).copyWith(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF0A4B6E), // أزرار، شريط التنقل
    onPrimary: AppColors.cloudWhite,
    secondary: AppColors.cloudWhite, // خلفية كروت
    onSecondary: AppColors.inkNavy,
    error: AppColors.mistBlue,
    onError: AppColors.silverBlue,
    surface: AppColors.skyMid, // timeline، حلقة التقدم، حدود
    onSurface: AppColors.inkNavy,
    inversePrimary: AppColors.inkNavy, // ← النص الرئيسي
    inverseSurface: AppColors.gold, // ← الذهبي
    primaryContainer: AppColors.cloudWhite, // bottom-sheets
    onPrimaryContainer: AppColors.mistBlue,
    onInverseSurface: AppColors.inkNavy,
    surfaceContainer: AppColors.dawnWhite, // scaffold
    secondaryContainer: AppColors.cloudWhite,
  ),
  primaryColor: AppColors.skyDeep,
  primaryColorLight: AppColors.skyBright,
  primaryColorDark: AppColors.inkNavy,
  dividerColor: AppColors.mistBlue,
  highlightColor: AppColors.skyBright.withValues(alpha: 0.18),
  scaffoldBackgroundColor: AppColors.dawnWhite,
  canvasColor: AppColors.pearlWhite,
  hoverColor: AppColors.skyMist.withValues(alpha: 0.40),
  disabledColor: AppColors.silverBlue,
  hintColor: AppColors.silverBlue,
  focusColor: AppColors.skyMid,
  secondaryHeaderColor: AppColors.skyMid,
  cardColor: AppColors.cloudWhite,
  dividerTheme: const DividerThemeData(color: AppColors.mistBlue, thickness: 1),
  textSelectionTheme: TextSelectionThemeData(
    selectionColor: AppColors.skyBright.withValues(alpha: 0.28),
    selectionHandleColor: AppColors.skyMid,
  ),
  cupertinoOverrideTheme: const CupertinoThemeData(primaryColor: AppColors.skyMid),
  timePickerTheme: TimePickerThemeData(
    backgroundColor: AppColors.skyDeep,
    dialBackgroundColor: AppColors.dawnWhite,
    dialHandColor: AppColors.skyBright,
    dialTextColor: AppColors.inkNavy.withValues(alpha: .75),
    entryModeIconColor: AppColors.pearlWhite.withValues(alpha: .7),
    hourMinuteTextColor: AppColors.pearlWhite.withValues(alpha: .90),
    dayPeriodTextColor: AppColors.pearlWhite.withValues(alpha: .90),
    cancelButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(AppColors.nightSteel),
      foregroundColor: WidgetStateProperty.all(AppColors.pearlWhite),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      textStyle: WidgetStateProperty.all(const TextStyle(fontFamily: 'cairo', fontSize: 16)),
    ),
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(AppColors.skyBright),
      foregroundColor: WidgetStateProperty.all(AppColors.cloudWhite),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      textStyle: WidgetStateProperty.all(const TextStyle(fontFamily: 'cairo', fontSize: 16)),
    ),
  ),
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontFamily: 'cairo',
      fontSize: 12,
      color: AppColors.inkNavy,
    ),
  ),
);

// ─── Dark Theme ───────────────────────────────────────────────────────────────

final ThemeData darkTheme = ThemeData.dark(useMaterial3: false).copyWith(
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.nightDeep,
    onPrimary: AppColors.nightAbyss,
    secondary: AppColors.pearlWhite,
    onSecondary: AppColors.nightSteel,
    error: AppColors.nightDeep,
    onError: AppColors.nightAbyss,
    surface: AppColors.skyLight, // timeline، حلقة التقدم — يضيء على الداكن
    onSurface: AppColors.nightAbyss,
    inversePrimary: AppColors.pearlWhite, // ← النص الرئيسي
    inverseSurface: AppColors.goldSoft, // ← الذهبي الناعم
    primaryContainer: AppColors.nightDeep, // bottom-sheets
    onPrimaryContainer: AppColors.nightMid,
    onInverseSurface: AppColors.nightAbyss,
    surfaceContainer: AppColors.nightMid,
    secondaryContainer: AppColors.nightSteel,
  ),
  primaryColor: AppColors.nightSteel,
  primaryColorLight: AppColors.nightMid,
  primaryColorDark: AppColors.nightAbyss,
  dividerColor: AppColors.nightMid,
  highlightColor: AppColors.skyLight.withValues(alpha: 0.14),
  scaffoldBackgroundColor: AppColors.nightAbyss,
  canvasColor: AppColors.pearlWhite,
  hoverColor: AppColors.pearlWhite.withValues(alpha: 0.08),
  disabledColor: AppColors.nightAbyss,
  hintColor: AppColors.pearlWhite,
  focusColor: AppColors.nightDeep,
  secondaryHeaderColor: AppColors.nightDeep,
  cardColor: AppColors.pearlWhite,
  dividerTheme: const DividerThemeData(color: AppColors.nightMid, thickness: 1),
  textSelectionTheme: TextSelectionThemeData(
    selectionColor: AppColors.skyLight.withValues(alpha: 0.25),
    selectionHandleColor: AppColors.skyLight,
  ),
  cupertinoOverrideTheme: const CupertinoThemeData(primaryColor: AppColors.skyLight),
  timePickerTheme: TimePickerThemeData(
    backgroundColor: AppColors.nightMid,
    dialBackgroundColor: AppColors.nightSteel,
    dialHandColor: AppColors.skyLight,
    dialTextColor: AppColors.pearlWhite.withValues(alpha: .75),
    entryModeIconColor: AppColors.pearlWhite.withValues(alpha: .6),
    hourMinuteTextColor: AppColors.pearlWhite.withValues(alpha: .85),
    dayPeriodTextColor: AppColors.pearlWhite.withValues(alpha: .85),
    dayPeriodColor: AppColors.nightSteel,
    cancelButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(AppColors.pearlWhite.withValues(alpha: .10)),
      foregroundColor: WidgetStateProperty.all(AppColors.pearlWhite),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      textStyle: WidgetStateProperty.all(const TextStyle(fontFamily: 'cairo', fontSize: 16)),
    ),
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(AppColors.skyLight),
      foregroundColor: WidgetStateProperty.all(AppColors.nightAbyss),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      textStyle: WidgetStateProperty.all(const TextStyle(fontFamily: 'cairo', fontSize: 16)),
    ),
  ),
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontFamily: 'cairo',
      fontSize: 12,
      color: AppColors.nightDeep,
    ),
  ),
);
