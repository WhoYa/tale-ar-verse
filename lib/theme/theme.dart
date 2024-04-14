import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

final mainThemeCupertino = CupertinoThemeData(
  textTheme: CupertinoTextThemeData(
    textStyle: TextStyle(
      fontFamily: 'averta',
      color: CupertinoColors.white,
      letterSpacing: 0,
      fontWeight: FontWeight.normal,
      fontSize: 12,
    )
  )
);
