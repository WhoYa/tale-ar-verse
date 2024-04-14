import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taleaiverse/router/router.dart';
import 'package:taleaiverse/theme/theme.dart';


class CryptoApp extends StatelessWidget {
  const CryptoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CryptoApp',
      theme: mainThemeMaterial,
      routes: routes,
    );
  }
}