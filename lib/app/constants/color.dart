import 'package:flutter/material.dart';

const appPurple = Color(0xFF431AA1);
const appWhite = Color(0xFFFAF8FC);
const appDonker = Color(0xFF2E0D8A);
const appYoungPurple = Color(0xFF9345F2);
const appGrey = Color(0xFFB9A2D8);
const appBoldBlue = Color(0xFF260F68);
const appOrange = Color(0xFFE6704A);
const appDarkPurple = Color(0xFF1E0771);

ThemeData themeLight = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  primaryColor: appPurple,
  appBarTheme: AppBarTheme(backgroundColor: appPurple),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: appDarkPurple),
    bodyMedium: TextStyle(color: appDarkPurple),
  ),
);

ThemeData themeDark = ThemeData(
  scaffoldBackgroundColor: appDarkPurple,
  primaryColor: appGrey,
  appBarTheme: AppBarTheme(backgroundColor: appDarkPurple),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: appWhite),
    bodyMedium: TextStyle(color: appWhite),
  ),
);
