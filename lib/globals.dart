import 'dart:ui';

import 'package:flutter/material.dart';

import 'l10n/l10n.dart';

void showSnackBar(String value, BuildContext context) {
  Future.delayed(const Duration(milliseconds: 100), () {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        action: SnackBarAction(
          label: 'Ok',
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
        backgroundColor: Colors.black87,
        content: Text(
          value,
        )));
  });
}

String getSupportedLanguageCode() {
  const List<Locale> supportedLocales = AppLocalizations.supportedLocales;
  final String systemLanguageCode =
      PlatformDispatcher.instance.locale.languageCode;

  for (var locale in supportedLocales) {
    if (locale.languageCode == systemLanguageCode) {
      return systemLanguageCode;
    }
  }
  return 'en';
}
