import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:taleaiverse/router/router.dart';
import 'package:taleaiverse/theme/theme.dart';
import 'package:talker_flutter/talker_flutter.dart';

class CryptoApp extends StatelessWidget {
  const CryptoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'CryptoApp',
      theme: mainThemeCupertino,
      routes: routes,
      navigatorObservers: [
        TalkerRouteObserver(GetIt.I<Talker>()),
      ],
    );
  }
}
