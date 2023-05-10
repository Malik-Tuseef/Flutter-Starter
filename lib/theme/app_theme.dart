import 'package:flutter/material.dart';

import '../globals.dart';

double tDefaultPading = 16;
String tTitleFontFamily = 'TuskerGrotestk';

class AppTheme {
  static const Color _lightTextColor = Colors.black;
  static const Color _darkTextColor = Colors.white;
  static const Color _lightSecTextColor = Color(0xFF939393);
  static const Color _darkSecTextColor = Color(0xFF939393);

  static final Color _inActiveButtonColor =
      const Color(0xFF000000).withOpacity(0.2);
  static const Color _activeButtonColor = Color(0xFF000000);

  static Color get backGroundColor =>
      isDarkTheme ? _darkTextColor : _darkTextColor;

  static Color get inActiveButtonColor =>
      isDarkTheme ? _inActiveButtonColor : _inActiveButtonColor;

  static Color get activeButtonColor =>
      isDarkTheme ? _activeButtonColor : _activeButtonColor;

  static Color get primaryTextColor =>
      isDarkTheme ? _darkTextColor : _lightTextColor;

  static Color get secondoryTextColor =>
      isDarkTheme ? _darkSecTextColor : _lightSecTextColor;

  static Color get redColor => Colors.red;
  static Color get darkRedColor => const Color(0xffAA2A21);
  static Color get veryDarkRedColor => const Color(0xff53130E);
  static Color get limeGreenColor => const Color(0xff1CE354);
  static Color get mediumGreenColor => const Color(0xff24AA21);
  static Color get darkGreenColor => const Color(0xff10530E);
  static Color get blueColor => const Color(0xff4F3B88);
  static Color get lightGreyColor => const Color(0xffD9D9D9);
  static Color get darkGreyColor => const Color(0xff262626);
  static Color get mediumGreyColor => const Color(0xff3E3E3E);

  static Color get lightBorderColor => const Color(0xffEFEFEF);
}

ThemeData lightTheme() {
  return ThemeData.light().copyWith(
    useMaterial3: true,
    primaryColor: AppTheme.primaryTextColor,
    textTheme: ThemeData.light().textTheme.apply(
          fontFamily: 'SFProRounded',
          bodyColor: AppTheme.primaryTextColor,
        ),
    primaryTextTheme: ThemeData.light().textTheme.apply(
          bodyColor: AppTheme.primaryTextColor,
        ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    scaffoldBackgroundColor: AppTheme.backGroundColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        backgroundColor: MaterialStateProperty.all(
          AppTheme.primaryTextColor,
        ),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            vertical: tDefaultPading,
            horizontal: tDefaultPading,
          ),
        ),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        overlayColor: MaterialStateProperty.all(
            AppTheme.primaryTextColor.withOpacity(0.3)),
        foregroundColor: MaterialStateProperty.all(AppTheme.primaryTextColor),
        side: MaterialStateProperty.all(
            BorderSide(color: AppTheme.primaryTextColor)),
        padding:
            MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 18)),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(
            AppTheme.secondoryTextColor.withOpacity(0.3)),
        foregroundColor: MaterialStateProperty.all(AppTheme.redColor),
      ),
    ),
    // textSelectionTheme: TextSelectionThemeData(cursorColor: tPrimaryColor),
    cardTheme: CardTheme(
      color: AppTheme.backGroundColor,
      elevation: 0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppTheme.backGroundColor,
      filled: true,
      hintStyle: TextStyle(
        color: AppTheme.secondoryTextColor,
      ),
      labelStyle: const TextStyle(color: Colors.grey),
      // prefixStyle: const TextStyle(color: Colors.red),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: AppTheme.backGroundColor, width: 2),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: AppTheme.backGroundColor, width: 2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: AppTheme.backGroundColor, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: AppTheme.backGroundColor, width: 2),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: AppTheme.backGroundColor, width: 2),
      ),
    ),
    iconTheme: IconThemeData(color: AppTheme.primaryTextColor),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedItemColor: Colors.grey,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppTheme.primaryTextColor),
  );
}
