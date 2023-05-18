import 'package:flutter/material.dart';

//light
Color tPrimaryColorLight = const Color(0xff000000);
Color tTextColorLight = const Color(0xff000000);
Color tScaffoldColorLight = const Color(0xffffffff);

//dark

Color tTextColordark = const Color(0xffffffff);
Color tPrimaryColorDark = const Color(0xffffffff);
Color tScaffoldColorDark = const Color(0xff000000);

extension ThemeColorExtensions on BuildContext {
  Color get primaryColor {
    final theme = Theme.of(this);
    return theme.brightness == Brightness.light
        ? tPrimaryColorLight // Light theme primary color
        : tPrimaryColorDark; // Dark theme primary color
  }

  Color get textColor {
    final theme = Theme.of(this);
    return theme.brightness == Brightness.light
        ? tTextColorLight // Light theme primary color
        : tTextColordark; // Dark theme primary color
  }
}
