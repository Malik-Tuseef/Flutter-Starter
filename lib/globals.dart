import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences localStorage;
late bool isDarkTheme;

Future<void> get initGobalOnMain async {
  localStorage = await SharedPreferences.getInstance();
  isDarkTheme = false;
}

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
