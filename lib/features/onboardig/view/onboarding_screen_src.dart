import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:taleaiverse/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

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

    return CupertinoPageScaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      child: Container(
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
                  alignment: const AlignmentDirectional(0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/illustrations/onboarding_welcome.png',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 360, 0, 0),
                    child: Text("Создайте свою сказку прямо сейчас",
                        style: theme.textTheme.textStyle),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 320, 0, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: const Icon(
                        Icons.menu_book_rounded,
                        size: 35,
                        color: CupertinoColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(22, 20, 22, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CupertinoButton(
                    onPressed: () async {
                      Navigator.pushNamed(context, 'LoginPage');
                    },
                    color: const Color.fromARGB(255, 155, 94, 225),
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 60,
                      alignment: Alignment.center,
                      child: const Text(
                        'Войти',
                        style: CustomTextStyles.buttonTextStyle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: CupertinoButton(
                      onPressed: () async {
                        Navigator.pushNamed(context, 'SignUpPage');
                      },
                      color: const Color(0x1AFFFFFF),
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 60,
                        alignment: Alignment.center,
                        child: const Text('Зарегистрироваться',
                            style: CustomTextStyles.buttonTextStyle),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 1),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24, 100, 24, 90),
                child: RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Регистрируясь, вы соглашаетесь с ',
                        style: CustomTextStyles.usualAvertaTextStyle
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const TextSpan(
                        text: 'Условиями пользования',
                        style: CustomTextStyles.avertaUnderline,
                      ),
                      TextSpan(
                          text: ' и ',
                          style: CustomTextStyles.usualAvertaTextStyle
                              .copyWith(fontWeight: FontWeight.w500)),
                      const TextSpan(
                          text: 'Политикой конфиденциальности',
                          style: CustomTextStyles.avertaUnderline)
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
