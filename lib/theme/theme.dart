import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextStyles {

  static const TextStyle usualAvertaStyle = TextStyle(
    fontFamily: 'averta',
    letterSpacing: 0,
    fontWeight: FontWeight.bold,
    fontSize: 15,
    color: CupertinoColors.white,
  );

  static const TextStyle buttonStyle = TextStyle(
    fontFamily: 'Fairy',
    letterSpacing: 0,
    fontWeight: FontWeight.w600,
    fontSize: 22,
    color: CupertinoColors.white,
  );

  static const TextStyle textStyle3 = TextStyle(
    fontFamily: 'YourFont',
    letterSpacing: 0,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: CupertinoColors.white,
  );
}



final mainThemeMaterial = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(255, 35, 35, 35),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
  dividerColor: Colors.white,
  appBarTheme: const AppBarTheme(
    elevation: 0,
      backgroundColor: Color.fromARGB(255, 35, 35, 35),
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  textTheme: TextTheme(
      bodyMedium: const TextStyle(
          color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
      labelSmall: TextStyle(
        color: Colors.white.withOpacity(0.6),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      )),
  useMaterial3: true,
);

const mainThemeCupertino = CupertinoThemeData(
  scaffoldBackgroundColor: Color(0xFF05051D),
  primaryColor: Color(0xFF05051D),

  textTheme: CupertinoTextThemeData(
    textStyle: TextStyle(
      color: CupertinoColors.white,
      fontFamily: 'averta',
      letterSpacing: 0,
      fontWeight: FontWeight.bold,
      fontSize: 15,
    )
  )
);