import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    final theme = CupertinoTheme.of(context);

    return Scaffold(
      backgroundColor: Color(0xFF060623),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFF05051D),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/illustrations/onboarding_welcome.png',
                        width: double.infinity,
                        height: 414,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 356, 0, 0),
                      child: Text(
                        "Создайте свою сказку прямо сейчас",
                        style: TextStyle(
                          fontFamily: "averta",
                          letterSpacing: 0,
                          color: CupertinoColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 320, 0, 0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Icon(
                            Icons.menu_book_rounded,
                            size: 30,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(22, 20, 22, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CupertinoButton(
                        onPressed: () async {
                          Navigator.pushNamed(context, 'LoginPage');
                        },
                        color: Color.fromARGB(255, 115, 94, 225),
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 60,
                          alignment: Alignment.center,
                          child: Text('Войти',
                              style: TextStyle(
                                  fontFamily: 'Fairy',
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: CupertinoButton(
                          onPressed: () async {
                            Navigator.pushNamed(context, 'SignUpPage');
                          },
                          color: Color(0x1AFFFFFF),
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 60,
                            alignment: Alignment.center,
                            child: Text('Зарегистрироваться',
                                style: TextStyle(
                                    fontFamily: 'Fairy',
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22)),
                          ),
                        ),

                        // CupertinoButton(
                        //   onPressed: () async {
                        //     Navigator.pushNamed(context, 'SignUpPage');
                        //   },
                        //   child: Text(
                        //     'Зарегистрироваться',
                        //     style: TextStyle(
                        //       fontFamily: 'Fairy',
                        //       color: Colors.white,
                        //       letterSpacing: 0,
                        //       fontWeight: FontWeight.w600,
                        //       fontSize: 22
                        //     ),
                        //   ),
                        //   color: Color(0x1AFFFFFF),
                        //   padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        //   borderRadius: BorderRadius.circular(20),
                        // ),
                      )
                    ],
                  )),
            ],
          )),
    );
  }
}
