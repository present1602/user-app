import 'dart:ui';

import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
        scaffoldBackgroundColor:
            isDarkTheme ? Colors.black : Colors.grey.shade300,
        primarySwatch: Colors.purple,
        primaryColor: isDarkTheme ? Colors.black : Colors.grey.shade300,
        indicatorColor: isDarkTheme ? Color(0xff0E1D36) : Color(0xffCBDCF8),
        hintColor: isDarkTheme ? Colors.grey.shade300 : Colors.grey.shade800,
        highlightColor: isDarkTheme ? Color(0xff372901) : Color(0xffFCE192),
        hoverColor: isDarkTheme ? Color(0xff3A3A3B) : Color(0xff4285F4),
        focusColor: isDarkTheme ? Color(0xff0B2512) : Color(0xffA8DAB5),
        disabledColor: Colors.grey,
        cardColor: isDarkTheme ? Color(0xFF151515) : Colors.white,
        canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
        brightness: isDarkTheme ? Brightness.dark : Brightness.light,
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
            colorScheme:
                isDarkTheme ? ColorScheme.dark() : ColorScheme.light()),
        appBarTheme: AppBarTheme(
          elevation: 0.0,
        ),
        textTheme: TextTheme(
          titleMedium: TextStyle(
            fontFamily: 'Corben',
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: isDarkTheme ? Colors.grey.shade300 : Colors.black,
          ),
        ));
  }
}
// headline1: TextStyle(
//       fontFamily: 'Corben',
//       fontWeight: FontWeight.w700,
//       fontSize: 24,
//       color: Colors.black,
//     ),

// TextStyle? displayLarge = TextStyle(color: Colors.amber),
// TextStyle? displayMedium,
// TextStyle? displaySmall,
// TextStyle? headlineLarge,
// TextStyle? headlineMedium,
// TextStyle? headlineSmall,
// TextStyle? titleLarge,
// TextStyle? titleMedium,
// TextStyle? titleSmall,
// TextStyle? bodyLarge,
// TextStyle? bodyMedium,
// TextStyle? bodySmall,
// TextStyle? labelLarge,
// TextStyle? labelMedium,
// TextStyle? labelSmall,
// TextStyle? headline1,
// TextStyle? headline2,
// TextStyle? headline3,
// TextStyle? headline4,
// TextStyle? headline5,
// TextStyle? headline6,
// TextStyle? subtitle1,
// TextStyle? subtitle2,
// TextStyle? bodyText1,
// TextStyle? bodyText2,
// TextStyle? caption,
// TextStyle? button,
// TextStyle? overline,
