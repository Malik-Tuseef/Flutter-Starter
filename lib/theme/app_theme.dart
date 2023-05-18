import 'package:flutter/material.dart';

import 'theme_colors.dart';

double tDefaultPading = 16;
String tTitleFontFamily = 'TuskerGrotestk';
String tFontFamily = 'SFProRounded';

ThemeData lightTheme() {
  return ThemeData.light().copyWith(
    useMaterial3: true,
    primaryColor: tPrimaryColorLight,
    textTheme: ThemeData.light().textTheme.apply(
          fontFamily: tFontFamily,
          bodyColor: tTextColorLight,
        ),
    primaryTextTheme: ThemeData.light().textTheme.apply(
          bodyColor: tTextColorLight,
        ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    scaffoldBackgroundColor: tScaffoldColorLight,
  );
}

ThemeData darkTheme() {
  return ThemeData.dark().copyWith(
    useMaterial3: true,
    primaryColor: tPrimaryColorDark,
    textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: tFontFamily,
          bodyColor: tTextColordark,
        ),
    primaryTextTheme: ThemeData.dark().textTheme.apply(
          bodyColor: tTextColordark,
        ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    scaffoldBackgroundColor: tScaffoldColorDark,
  );
}
